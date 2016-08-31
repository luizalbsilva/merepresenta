Given /^I'm in the home page$/ do
  visit root_path
end

Given /^I'm on the questions page$/ do
  visit questions_path
end

Given /^there is a question$/ do
  @question = FactoryGirl.create(:question)
end

Given /^there is a ([^"]*) about ([^"]*)$/ do |arg1, arg2|
  @truth = FactoryGirl.create(:question, :role_type => "truth", :category => Category.find_or_create_by_name(arg2)) if arg1 == "truth"
  @dare = FactoryGirl.create(:question, :role_type => "dare", :category => Category.find_or_create_by_name(arg2)) if arg1 == "dare"
end

Given /^I'm logged in$/ do
  visit "/auth/facebook"
  @current_user = User.find_by_email("nicolas@engage.is")
end

Given /^I'm logged in as admin$/ do
  visit "/auth/facebook"
  user = User.find_by_email("nicolas@engage.is")
  user.update_attribute(:admin, true)
  visit root_path
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in arg1, :with => arg2
end

Given /^I choose "([^"]*)" for "([^"]*)"$/ do |arg1, arg2|
  case arg2
  when "Assunto"
    page.execute_script("$(\"select[name='question[category_id]']\").val(#{Category.find_or_create_by_name(arg1).id})")
  else
    select arg1, :from => arg2
    sleep(1)
  end
end

Given /^there is a truth with (\d+) votes saying ([^"]*)$/ do |arg1, arg2|
  @truth = FactoryGirl.create(:question, :role_type => "truth", :text => arg2)
  arg1.to_i.times { |i| FactoryGirl.create(:vote, :question => @truth) }
end

Given /^there is a truth about "([^"]*)" saying "([^"]*)"$/ do |arg1, arg2|
  @truth = FactoryGirl.create(:question, :role_type => "truth", :text => arg2, :category => Category.find_by_name(arg1))
end

When /^I send the subscriber form with my email$/ do
  visit root_path
  fill_in "subscriber[email]", :with => "runeroniek@gmail.com"
  click_button "Enviar"
end

When /^I click "([^"]*)"$/ do |arg1|
  click_link arg1
end

When /^I press "([^"]*)"$/ do |arg1|
  sleep(1)
  page.execute_script("$('.questions_list li').trigger('mouseover')") if arg1 == "Votar"
  click_on(arg1)
end

When /^I filter ([^"]*) by "([^"]*)"$/ do |arg1, arg2|
  page.execute_script("$(\"select#category_id_#{arg1 == 'truths' ? 'truth' : 'dare'}\").val(#{Category.find_by_name(arg2).id})")
  page.execute_script("$(\".filter-category\").trigger('change')")
end

When /^I go to the questions page$/ do
  visit questions_path
end

When /^I order truths by votes$/ do
  page.execute_script("$('select#order_by_truth').val('voted_first')")
  page.execute_script("$('.order-category').trigger('change')")
  sleep 2
end

Then /^I should not see ([^"]*)$/ do |arg1|
  case arg1
  when "that truth"
    page.should_not have_content(@truth.text)
  when "that dare"
    page.should_not have_content(@dare.text)
  else
    page.should_not have_content(arg1)
  end
end

Then /^I should see ([^"]*)$/ do |arg1|
  case arg1
  when "a Facebook share button for this question"
    page.should have_css("li[data-id=\"#{@question.id}\"] .share_options li.twitter")
  when "a Twitter share button for this question"
    page.should have_css("li[data-id=\"#{@question.id}\"] .share_options li.facebook")
  when "some share buttons for my truth"
    page.find(".form.truth").should have_css("a.twitter_btn")
    page.find(".form.truth").should have_css("a.fb_btn")
  when "some share buttons for my dare"
    page.find(".form.dare").should have_css("a.twitter_btn")
    page.find(".form.dare").should have_css("a.fb_btn")
  when "that dare"
    page.should have_content(@dare.text)
  when "that truth"
    page.should have_content(@truth.text)
  when "1 voto"
    sleep 1
    page.find("li.#{@question.role_type} span.votes").text.should == "1"
  when "question's text field"
    page.should have_css("textarea[name=\"question[text]\"]")
  when "question's role_type field"
    page.should have_css("select[name=\"question[role_type]\"]")
  when "question's category field"
    page.should have_css("select[name=\"question[category_id]\"]")
  when "like button"
    page.should have_css("form[class=\"edit_user\"]")
  else
    page.should have_content(arg1)
  end
end

Then /^show me the page$/ do
  save_and_open_page
end

Then /^I should see "([^"]*)" above "([^"]*)"$/ do |arg1, arg2|
  page.html.should match(/#{arg1}(.)+#{arg2}/)
end

Given /^there is a chosen question saying "(.*?)"$/ do |arg1|
  @question = FactoryGirl.create(:question, :text => arg1, :chosen => true)
end

When /^I go to "(.*?)"$/ do |arg1|
  if arg1 == "the homepage"
    visit root_path
  elsif arg1 == "this candidate answers page as the candidate"
    visit new_candidate_answer_path(@candidate, :token => @candidate.token)
  elsif arg1 == "this candidate answers page without token"
    visit new_candidate_answer_path(@candidate)
  elsif arg1 == "the answers page"
    visit new_answer_path
  elsif arg1 == "this candidate page"
    visit candidate_path(@candidate)
  elsif arg1 == "the candidates home page"
    visit candidates_home_path
  else
    raise "I don't know #{arg1}"
  end
end

Given /^there is a candidate$/ do
  @candidate = FactoryGirl.create(:candidate)
end

Given /^I'm on "(.*?)"$/ do |arg1|
  step "I go to \"#{arg1}\""
end

Given /^I choose "(.*?)" for the question "(.*?)"$/ do |arg1, arg2|
  within("form.new_answer") do
    choose(arg1)
    sleep(2)
  end
end

Then /^a new answer should be created to this candidate$/ do
  @candidate.answers.size.should eq 1
end

Then /^I should be in "(.*?)"$/ do |arg1|
  if arg1 == "the homepage"
    current_path.should == root_path
  elsif arg1 == "this candidate page"
    current_path.should == candidate_path(@candidate)
  elsif arg1 == "the parties page"
    current_path.should == user_parties_path(@current_user)
  else
    raise "I don't know what '#{arg1}' means :("
  end
end

When /^I open the user menu$/ do
  page.execute_script('$(".options").show();')
end

Then /^I should be assigned to the group (\d+)$/ do |arg1|
  @candidate.reload.group_id.should be_== arg1.to_i
end

Given /^there is a candidate with email "(.*?)"$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, :email => arg1)
end

Then /^an email should be sent to "(.*?)"$/ do |arg1|
  ActionMailer::Base.deliveries.select{|e| e.to.include? arg1}.size.should eq 1
end

Given /^there is a candidate called "(.*?)"$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, :name => arg1, nickname: arg1)
end


When /^I focus out of the field$/ do
  page.execute_script('$("textarea").trigger("blur");')
  sleep(2)
end

When /^I reload the page$/ do
  visit page.driver.browser.current_url
end

Then /^the field "(.*?)" should have content "(.*?)"$/ do |arg1, arg2|
  page.find('textarea').should have_content(arg2) 
end

Then /^a new answer should be created to me$/ do
  @current_user.answers.should_not be_empty
end

Given /^there is a candidate of "(.*?)"$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, :party => FactoryGirl.create(:party, :symbol => arg1))
end

Given /^this candidate answered "(.*?)" for this question$/ do |arg1|
  FactoryGirl.create(:candidate_answer, :question => @question, :responder => @candidate, :short_answer => arg1)
end

Given /^there is a party called "(.*?)" united to "(.*?)"$/ do |arg1, arg2|
  @union = FactoryGirl.create(:union, :name => arg2)
  @party = FactoryGirl.create(:party, :symbol => arg1, :union => @union)
end

Given /^there is a candidate for this party$/ do
  @candidate = FactoryGirl.create(:candidate, :party => @party)
end

Given /^there is a candidate called "(.*?)" for this party$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, name: arg1, :party => @party, nickname: arg1)
end

Given /^there is an unrelated party called "(.*?)"$/ do |arg1|
  @party = FactoryGirl.create(:party, :symbol => arg1, :union => nil)
end


Given /^there is a candidate called "(.*?)" and (\d+) years old for this party$/ do |arg1, arg2|
  @candidate = FactoryGirl.create(:candidate, name: arg1, nickname: arg1, born_at: Time.now - arg2.to_i.years, party: @party) 
end

Given /^the candidate "(.*?)" answered "(.*?)" for this question$/ do |arg1, arg2|
  FactoryGirl.create(:candidate_answer, question: @question, responder: Candidate.find_by_nickname(arg1), short_answer: arg2)
end


Given /^I choose "(.*?)" from the filter form$/ do |arg1|
  choose(arg1)
end

Given /^there is a candidate "(.*?)" with scholarity "(.*?)"$/ do |arg1, arg2| 
  @candidate = FactoryGirl.create(:candidate, name: arg1, nickname: arg1, scholarity: arg2, party: @party) 
end

Given /^there is a candidate "(.*?)" that is not a politician$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, name: arg1, nickname: arg1, politician: false, party: @party) 
end

Given /^there is a candidate "(.*?)" that is a politician$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, name: arg1, nickname: arg1, politician: true,  party: @party) 
end

Given /^there is a candidate "(.*?)" that is male$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, name: arg1, nickname: arg1, male: true,  party: @party) 
end

Given /^there is a candidate "(.*?)" that is female$/ do |arg1|
  @candidate = FactoryGirl.create(:candidate, name: arg1, nickname: arg1, male: false, party: @party) 
end


When /^I check "(.*?)" from the like form$/ do |arg1|
  sleep(2)
  page.execute_script("$('form.like label').first().css({ 'text-indent' : '0px'});")
  sleep(2)
  check(arg1)
  sleep(3)
end


When /^I check "(.*?)" from the filter form$/ do |arg1|
  check(arg1) 
end

Given /^this candidate have (\d+) likes$/ do |arg1|
  arg1.to_i.times { FactoryGirl.create(:user, :candidate => @candidate) }
end


Then /^I should have a favorite candidate$/ do
  @current_user.reload.candidate_id.should_not be_nil
end

When(/^I click the Facebook login button$/) do
  visit("/auth/facebook")
end
