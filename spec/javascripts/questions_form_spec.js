describe("Questions.Form", function(){
  var view;
  var context = describe;
  var storeStub;
  beforeEach(function(){
    view = new App.Questions.Form({
      el: $('<form><div class="preview"><div class="description"></div><div class="category"></div></div><textarea>content</textarea><select name="question[category_id]"><option></option><option selected="selected">selected option</option></select></form>')[0]
    });

    storeStub = { get: function(){}, set: function(){}, remove: function(){} };

    App.Common.login = {
      validate: function(){},
      showOptions: function(){}
    };
  });

  describe("#initialize", function(){
    it("should initialize a preview description element", function(){
      expect(view.previewDescription).toEqual(jasmine.any(Object));
    });

    it("should initialize a preview category element", function(){
      expect(view.previewCategory).toEqual(jasmine.any(Object));
    });

    it("should initialize a preview element", function(){
      expect(view.preview).toEqual(jasmine.any(Object));
    });

    it("should initialize an actions element", function(){
      expect(view.actions).toEqual(jasmine.any(Object));
    });

    it("shoud initialize a select element", function(){
      expect(view.select).toEqual(jasmine.any(Object));
    });

    it("should initialize a textarea element", function(){
      expect(view.textarea).toEqual(jasmine.any(Object));
    });

    it("should initialize a question element", function(){
      expect(view.question).toEqual(jasmine.any(Object));
    });

    it("should create a question store", function(){
      expect(view.store).toEqual(jasmine.any(Store));
    });
  });

  describe("#returnTextarea", function(){
    beforeEach(function(){
      spyOn(view.actions, "slideUp");
      spyOn(view.textarea, "animate");
      view.returnTextarea();
    });

    it("should hide actions", function(){
      expect(view.actions.slideUp).toHaveBeenCalled();
    });

    it("should animate the textarea", function(){
      expect(view.textarea.animate).toHaveBeenCalled();
    });
  });

  describe("#expandTextarea", function(){
    beforeEach(function(){
      spyOn(view.actions, "slideDown");
      spyOn(view.textarea, "animate");
      view.expandTextarea();
    });

    it("should show actions", function(){
      expect(view.actions.slideDown).toHaveBeenCalled();
    });

    it("should animate the textarea", function(){
      expect(view.textarea.animate).toHaveBeenCalled();
    });
  });

  describe("#generatePreview", function(){
    beforeEach(function(){
      view.generatePreview();
    });

    it("should copy text to preview description", function(){
      expect(view.previewDescription.html()).toEqual(view.textarea.val());
    });

    it("should copy selected option to preview category", function(){
      expect(view.previewCategory.html()).toEqual(view.$('[name="question[category_id]"] option:selected').html());
    });
  });


  describe("#storeQuestionData", function(){

    beforeEach(function(){
      view.store = storeStub;
    });
    it("should store question[category_id] and question[text]", function(){
      spyOn(view.store, "set");
      spyOn(view.select, "val").andReturn('1')
      spyOn(view.textarea, "val").andReturn('My question text');
      view.storeQuestionData();
      expect(view.store.set).toHaveBeenCalledWith('category', '1');
      expect(view.store.set).toHaveBeenCalledWith('text', 'My question text');
    })
  });

  describe("#showPreview", function(){
    var validator = {
      valid: function(){ return true }
    };

    beforeEach(function(){
      spyOn(validator, "valid").andReturn(true);
      spyOn(App.Common.login, "showOptions");
      $ = function(){
        return validator;
      };
    });

    afterEach(function(){
      $ = jQuery;
    });

    context("When the user is logged in", function(){

      beforeEach(function(){
        spyOn(App.Common.login, "validate").andReturn(true);
      })

      it("should not require login if form validation is false", function(){
        validator.valid.andReturn(false);
        view.showPreview();
        expect(App.Common.login.validate).wasNotCalled();
      });

      it("should require login", function(){
        view.showPreview();
        expect(App.Common.login.validate).toHaveBeenCalled();
      });

      it("should generate the preview", function(){
        spyOn(view, "generatePreview");
        view.showPreview();
        expect(view.generatePreview).toHaveBeenCalled();
      });

      it("should validate the form", function(){
        view.showPreview();
        expect(validator.valid).toHaveBeenCalled();
      });

      it("should hide question login.validate is true", function(){
        spyOn(view.question, "hide");
        view.showPreview();
        expect(view.question.hide).toHaveBeenCalled();
      });

      it("should show preview if login.validate is true", function(){
        spyOn(view.preview, "show");
        view.showPreview();
        expect(view.preview.show).toHaveBeenCalled();
      });
    });
    // end user-logged-in context

    context("When the user is not logged in", function(){

      beforeEach(function(){
        spyOn(App.Common.login, "validate").andReturn(false);
      })

      it("should validate the form", function(){
        view.showPreview();
        expect(validator.valid).toHaveBeenCalled();
      });

      it("should not require login if form validation is false", function(){
        validator.valid.andReturn(false);
        view.showPreview();
        expect(App.Common.login.validate).wasNotCalled();
      });

      it("should require login", function(){
        view.showPreview();
        expect(App.Common.login.validate).toHaveBeenCalled();
      });

      it("should not generate the preview", function(){
        spyOn(view, "generatePreview");
        view.showPreview();
        expect(view.generatePreview).wasNotCalled();
      });

      it("should not hide question if login.validate is false", function(){
        spyOn(view.question, "hide");
        view.showPreview();
        expect(view.question.hide).wasNotCalled();
      });

      it("should not show preview if login.validate is false", function(){
        spyOn(view.preview, "show");
        view.showPreview();
        expect(view.preview.show).wasNotCalled();
      });

      it("should store the question data", function(){
        spyOn(view, "storeQuestionData");
        view.showPreview();
        expect(view.storeQuestionData).toHaveBeenCalled();
      });

      it("should show the box with login options", function(){
        view.showPreview();
        expect(App.Common.login.showOptions).toHaveBeenCalled();
      })


    });
    // end user-not-logged-in context
  })


});