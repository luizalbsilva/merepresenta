Given /^I'm on the questions page$/ do
  visit questions_path
end

Given /^I'm logged in$/ do
  visit "/auth/facebook"
end

When /^I send the subscriber form with my email$/ do
  visit root_path
  fill_in "subscriber[email]", :with => "runeroniek@gmail.com"
  click_button "Enviar"
end

When /^I click "([^"]*)"$/ do |arg1|
  click_link arg1
end

Then /^I should see "([^"]*)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^I should not see "([^"]*)"$/ do |arg1|
  page.should_not have_content(arg1)
end