$(function() {
$("form[name='registerForm']").validate({ rules: {
        firstname: {
        required: true,
                minlength: 4,maxlength: 20  },//specify min length for password
        lastname: {
        required: true,
                minlength: 4,maxlength: 20  },//specify min length for username
        username: {
        required: true,
                minlength: 2,maxlength: 20  }//specify min length for password            
},
        messages: {// add displayed error messages for each rule
        firstname: {
                required: "Please provide a First Name",
                        minlength: "Your First Name must be at least 4 characters long",
                        maxlength: "Your First Name must be at the most 20 characters long"
                        },
        lastname: {
                required: "Please provide a Last Name",
                        minlength: "Your Last Name must be at least 4 characters long",
                        maxlength: "Your Last Name must be at the most 20 characters long"
                        },                        
        username: {
                required: "Please provide a Username",
                        minlength: "Your Username must be at least 2 characters long",
                        maxlength: "Your Username must be at the most 20 characters long"
                        }
                    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();     
                                  }
    });
});


