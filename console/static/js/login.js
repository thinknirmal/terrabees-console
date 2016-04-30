$(document).ready(function (){
    myCookie.is_sanitized();

    function update_response_msg(txt) {
        // Show error message to user
        $('#response_message').html(txt);
    }

    $('#login_form').submit(function (e){
        e.preventDefault();
        var input_email = $('#email').val();
        var input_pwd = $('#password').val();

        $.ajax({
            type: "POST",
            url: "https://api.terrabees.com/session",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify({
                "email": input_email,
                "password": input_pwd
            })
        }).fail(function (jqXHR, textStatus){
            update_response_msg('Unable to perform authentication due to connection problem');
        }).success(function (data){
            var status_code = data.status.code;
            var response_msg = '';

            switch (status_code) {
                case '400 Bad Request':     //Missing parameters
                case '401 Unauthorized':    //Unauthorized
                    update_response_msg('Invalid E-mail or Password');
                    break;

                case '200 OK':              //Success
                    var auth_token = data.data.auth_token;

                    /*
                        Remember Token for the configured period
                        Dependency:
                            js/js.cookie.js
                            js/myCookie.js
                    */
                    myCookie.set_auth_token(auth_token);
                    myCookie.set_email(input_email);
                    window.location = '/';
                    break;
            }
        });//.done(function () {

        //});
    });
});