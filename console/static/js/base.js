$(document).ready(function (){
    shared_utitilies = {
        left_nav: {
            set_active_menu_on_load: function () {
                /* Set 'active' class to the <li> element according to pathname on page load */
                var pathname = window.location.pathname;
                var element = 'a[href="' + pathname + '"';
                $(element).parents('li').addClass('active');
                $(element).parents('.nav.nav-second-level').addClass('in');
            }
        },
        load_page: function (page_name) {
            $('#base_view_body').load(window.location.origin + page_name);
        },
        init: function (){
            myCookie.is_sanitized();
            shared_utitilies.left_nav.set_active_menu_on_load();

            /* Logout */
            $('#logout').click(function (e){
                e.preventDefault();

                var auth_token = myCookie.get_auth_token();
                $.ajax({
                    type: "DELETE",
                    headers: { "Authorization": auth_token },
                    url: "https://api.terrabees.com/session"
        //        }).fail(function (jqXHR, textStatus){
        //            update_response_msg('Unable to perform authentication due to connection problem');
        //        }).success(function (data){
                }).done(function () {
                    myCookie.destroy();
                    window.location = './login';
                });
            });

            /* Modal */
            $(document).on('keydown', function (e){
                // Hide Modal when user presses 'esc'
                if (e.keyCode == 27) {
                    $('.modal').modal('hide');
                }
            });
        }
    }

    shared_utitilies.init();
});