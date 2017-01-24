// This javascript won't run, but is being loaded correctly into the app.
// Turns out, errors will mess up the whole script in production.
$(document).ready(function(){
  $(function() {
    var $form = $('#cc-form');
    $("#btnSignUpSubmit").click(function(e) {
      console.log("Registration function online...");
      // Set Stripe Publishable Key

      // Disable the submit button to prevent repeated clicks:
      e.preventDefault();
      $form.find('#btnSignUpSubmit').prop('disabled', true).val("Processing...");

      // Request a token from Stripe:
      Stripe.card.createToken($form, stripeResponseHandler);

      // Prevent the form from being submitted:
      return false;
    });
  });

  function stripeResponseHandler(status, response) {
    // Grab the form:
    var $form = $('#cc-form');

    if (response.error) { // Problem!

      // Show the errors on the form:
      $form.find('#errors').addClass("alert-danger").text(response.error.message);
      $form.find('#btnSignUpSubmit').prop('disabled', false).val("Submit"); // Re-enable submission

    } else { // Token was created!

      // Get the token ID:
      var token = response.id;

      // Insert the token ID into the form so it gets submitted to the server:
      $form.append($('<input type="hidden" name="user[stripeToken]" id="stripeToken">').val(token));

      if ($("#stripeToken").length >= 1) {
        // Submit the form:
        $form.get(0).submit();
      }
    }
  };
});
