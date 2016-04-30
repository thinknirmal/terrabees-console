/*
    @author: Naphat Theerawat
    Purpose:
        Class written on top of js.cookie.js for ease of management

    JS Dependency:
        js.cookie.js
*/

// Cookie Expiry Time in Day(s)
var EXPIRE_TIME = 90;

// Domain Restriction
var DOMAIN = 'localhost:6543';

myCookie = {
    is_sanitized: function() {
        /* Sanitary Check */
        if (window.location.pathname == '/login') {
            if (Cookies.get('auth_token') && Cookies.get('email')) {
                window.location = './';
            }
        } else {
            if (!(Cookies.get('auth_token') && Cookies.get('email'))) {
                window.location = './login';
            }
        }
//        if (Cookies.get('auth_token') && Cookies.get('email')) {
//            return true;
//        } else {
//            return false;
//        }
    },
    set_auth_token: function(auth_token) {
        Cookies.set('auth_token', auth_token, { expires: EXPIRE_TIME, path: DOMAIN });
    },
    get_auth_token: function(auth_token) {
        return Cookies.get('auth_token');
    },
    set_email: function(email) {
        Cookies.set('email', email, { expires: EXPIRE_TIME, path: DOMAIN })
    },
    get_email: function() {
        return Cookies.get('email');
    },
    destroy: function() {
        Cookies.remove('auth_token');
        Cookies.remove('email');
    }
};