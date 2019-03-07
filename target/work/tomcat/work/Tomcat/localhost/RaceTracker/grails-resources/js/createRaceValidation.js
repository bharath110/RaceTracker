
$(document).ready(function(){

  $("form[id='myform']").validate({
  
    rules: {
    
    	name: "required",
    	raceCode: "required"
     /* email: {
        required: true,
      
        email: true
      },
      password: {
        required: true,
        minlength: 5
      }*/
    },
  
    messages: {
    	name: "Please enter your name",
    	raceCode: "Please enter your raceCode",
     /* password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      email: "Please enter a valid email address"*/
    },
   
    submitHandler: function(form) {
      form.submit();
    }
  });
});