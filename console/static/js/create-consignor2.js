consignor = {
    addContact: function ($list_contact) {
        var $template_contact = $('.is_template.contact').clone();

        // Assign Contact Number
        var contact_number = $list_contact.find('.contact').length + 1;
        $template_contact.find('.contact_number').html(contact_number);

        // Remove the "Remove" button if default contact
        if (contact_number == 1) {
            $template_contact.find('.close-link').remove();
        }

        $template_contact.appendTo($list_contact);
        $template_contact.removeClass('is_template').addClass('animated fadeInUp');
    },
    addDispatch: function ($list_dispatch) {
        var $template_dispatch = $('.is_template.dispatch').clone();

        // Assign Contact Number
        var dispatch_number = $list_dispatch.find('.dispatch').length + 1;
        $template_dispatch.find('.dispatch_number').html(dispatch_number);

        // Remove the "Remove" button if default dispatch
        if (dispatch_number == 1) {
            $template_dispatch.find('.close-link').remove();
        }

        $template_dispatch.appendTo($list_dispatch);
        $template_dispatch.removeClass('is_template').addClass('animated fadeInUp');
    },
    init: function () {
        // Bind Event for "Add Contact" Button
        $('.btn_add_contact').bind('click', function(){
            var $list_contact = $(this).closest('.address').find('.list_contact').eq(0);
            consignor.addContact($list_contact);
        });

        // Bind Event for "Add Dispatch" Button
        $('.btn_add_dispatch').bind('click', function(){
            var $list_dispatch = $(this).closest('.address').find('.list_dispatch').eq(0);
            consignor.addDispatch($list_dispatch);
        });

        // Disable Form Sending
        $('form').bind('click', function(e) {
            e.preventDefault();
        });

        // Add Default Contact
        $('.btn_add_contact').click();

        // Add Default Dispatch
        $('.btn_add_dispatch').click();
    }
}
$(document).ready(function (){
    consignor.init();
});