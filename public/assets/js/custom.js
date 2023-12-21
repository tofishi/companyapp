$(document).ready(function() {
    $('#registrationForm').validate({
        rules: {
            name: {
                required: true,
                minlength: 3
            },
            email: {
                required: true,
                email: true
            },
            phone_number: {
                required: true,
                number: true, 
                minlength: 10,
                maxlength: 11
            },                    
            password_confirmation: {
                required: true,
                equalTo: "#password"
            },
            terms: {
                required: true
            }
        },
        messages: {
            name: {
                required: "Please enter your name",
                minlength: "Name must be at least 3 characters"
            },
            email: {
                required: "Please enter your email address",
                email: "Please enter a valid email address"
            },
            phone_number: {
                required: "Please enter your phone number",
                number: "Please enter a valid number",               
                minlength: "Please enter a valid mobile number with at least 10 digits",
                maxlength: "Please enter a valid mobile number with at most 11 digits"               
            },            
            password: {
                required: "Please enter a password",
                minlength: "Password must be at least 6 characters"
            },
            password_confirmation: {
                required: "Please confirm your password",
                equalTo: "Passwords do not match"
            },
            terms: {
                required: "Please agree to the terms and conditions"
            }
        },
        submitHandler: function (form) {
            
            $.ajax({
                url: BASE_URL+'/register', 
                type: 'POST',
                data: $(form).serialize(),
                dataType: 'json',

                success: function (response) {
                    if(response.code == "200")
                    {
                        toastr.success(response.message);
                        window.location.href = "/otp"; 
                    }else{
                        toastr.error(response.message);
                    }                 
                },
                error: function (xhr, status, error) {
                    if (xhr.responseJSON && xhr.responseJSON.errors && xhr.responseJSON.errors.email) {
                        toastr.error(xhr.responseJSON.errors.email);
                    } else {
                        toastr.error('An error occurred during registration.');
                    }
                }
            });
        }
    });

    $("#otpForm").validate({
        rules: {
            opt: {
                required: true,
                digits: true,
                minlength: 6,
                maxlength: 6
            }
        },
        messages: {
            otp: {
                required: "Please enter the OTP",
                digits: "Please enter a valid OTP (numeric only)",
                minlength: "Please enter a 6-digit OTP",
                maxlength: "Please enter a 6-digit OTP"
            }
        },
        submitHandler: function(form) {
          
            $.ajax({
                url: BASE_URL+'/verify-otp', 
                type: 'POST',
                data: $(form).serialize(),
                dataType: 'json',

                success: function (response) {
                    if(response.code == "200")
                    {
                        toastr.success(response.message);
                        window.location.href = "/dashboard"; 
                    }else{
                        toastr.error(response.message);
                    }                 
                },
                error: function (xhr, status, error) {
                    if (xhr.responseJSON && xhr.responseJSON.errors && xhr.responseJSON.errors.email) {
                        toastr.error(xhr.responseJSON.errors.email);
                    } else {
                        toastr.error('Invalid OTP. Please try again.');
                    }
                }
            });
        }
    });


    $("#loginForm").validate({
        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true
            }
        },
        messages: {
            email: {
                required: "Please enter your email address",
                email: "Please enter a valid email address"
            },
            password: {
                required: "Please enter your password"
            }
        },
        submitHandler: function(form) {
            $.ajax({
                url: BASE_URL+"/login-submit",
                type: 'POST',
                data: $(form).serialize(),
                dataType: 'json',

                success: function(response) {
                    if (response.code == "200") {
                        toastr.success(response.message);
                        window.location.href = "/dashboard";
                    } else {
                        toastr.error(response.message);
                    }
                },
                error: function(xhr, status, error) {
                    if (xhr.responseJSON && xhr.responseJSON.errors && xhr.responseJSON.errors.email) {
                        toastr.error(xhr.responseJSON.errors.email);
                    } else {
                        toastr.error('Login failed. Please check your credentials.');
                    }
                }
            });
        }
    });



}); // DOCUMENT