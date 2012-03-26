App.Questions = {
  Form:  Backbone.View.extend({
    events: {
      'click button.reset' : 'returnTextarea',
      'click button.preview' : 'showPreview',
      'focus textarea' : 'expandTextarea'
    },

    initialize: function(){
      this.preview = this.$('.preview');
      this.previewCategory = this.$('.preview .category');
      this.previewDescription = this.$('.preview .description');
      this.question = this.$('.question');
      this.select = this.$('select');
      this.textarea = this.$('textarea');
      this.actions = this.$('.action');
      this.store = new Store('question');
      this.$('select.chosen-select').chosen();
    },

    returnTextarea: function(){
      this.textarea.animate({ height: "60px" })
      this.actions.slideUp('fast');
    },

    expandTextarea: function(){
      this.textarea.animate({ height: "200px" })
      this.actions.slideDown('fast');
    },

    generatePreview: function(){
      this.previewDescription.html(this.textarea.val());
      this.previewCategory.html(this.$('[name="question[category_id]"] option:selected').html());
    },

    storeQuestionData: function(){
      this.store.set('category', this.select.val());
      this.store.set('text', this.textarea.val());
    },

    showPreview: function(){
      if($(this.el).valid() && App.Common.login.validate()){
        this.question.hide();
        this.generatePreview();
        this.preview.show();
      } else {
        this.storeQuestionData();
        App.Common.login.showOptions();
      }
      return false;
    }
  }),

  Index: Backbone.View.extend({
    el: 'body',

    events: {
      'click h4.discover' : 'toggleInfographic',
    },

    toggleInfographic: function(event){
      var obj = $(event.target);
      obj.siblings('.infographic').slideToggle('slow');
      obj.toggleClass('active');
    },

    initialize: function(){
      this.truthForm = new App.Questions.Form({el: this.$('form#questions_truth')[0]});
      this.dareForm = new App.Questions.Form({el: this.$('form#questions_dare')[0]});

      $('form.new_vote').bind('ajax:complete', function(){
        var obj = $(this);
        obj.after('Valeu por votar!');
        obj.remove();
      });

      $('#questions_truth').bind("ajax:success", function(event, data){
        $.get('questions?type_role=truth', function(data) { $('#truths').html(data); });
        $(".form.truth fieldset").html(data);
      });

      $('#questions_dare').bind("ajax:success", function(event, data){
        $.get('questions?type_role=dare', function(data) { $('#dares').html(data); });
        $(".form.dare fieldset").html(data);
      });
    },
  })
};