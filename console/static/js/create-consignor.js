(function($){
    consignor = {
        elements: {
            modal_consignor_profile: {
                $modal: $('#modal-consignor-profile'),
                $btn_ok: $('#btn_save_consignor_profile'),
                $btn_cancel: $('#btn_cancel_consignor_creation'),
                $input_consignor_name: $('#consignor_name'),
                $input_consignor_desc: $('#consignor_description')
            },
            modal_consignor_details: {
                $modal: $('#modal-consignor-details')
            },
            labels: {
                $consignor_name: $('#label_consignor_name'),
                $consignor_desc: $('#label_consignor_desc')
            }
        },
        modal_consignor_profile: {
            check_inputs: function () {
                var consignor_name = consignor.elements.modal_consignor_profile.$input_consignor_name.val();
                var consignor_desc = consignor.elements.modal_consignor_profile.$input_consignor_desc.val();

                if (consignor_name.length == 0 || consignor_desc.length == 0) {
                    consignor.elements.modal_consignor_profile.$btn_ok.attr('disabled', true);
                } else {
                    consignor.elements.modal_consignor_profile.$btn_ok.attr('disabled', false);
                }
            },
            save_profile: function () {
                var consignor_name = consignor.elements.modal_consignor_profile.$input_consignor_name.val();
                consignor.elements.labels.$consignor_name.html(consignor_name);

                var consignor_desc = consignor.elements.modal_consignor_profile.$input_consignor_desc.val();
                consignor.elements.labels.$consignor_desc.html(consignor_desc);

//                $('#label_consignor_desc').readmore({
//                    speed: 75,
////                    collapsedHeight: 10,
//                    lessLink: '<a href="#">Read less</a>'
//                });
            }
        },
        modal_consignor_details: {
            addContact: function ($list_contact) {
                var $template_contact = $('.is_template.contact').clone();

                // Assign Contact Number
                var contact_number = $list_contact.find('.contact').length + 1;
                $template_contact.find('.contact_number').html(contact_number);

                // Remove the "Remove" button if default contact
//                if (contact_number == 1) {
//                    $template_contact.find('.close-link').remove();
//                }

                $template_contact.appendTo($list_contact);
                $template_contact.removeClass('is_template').addClass('animated fadeInUp');
            }
        },
        init: function () {
//            consignor.modal_consignor_profile.$btn_cancel.bind('click', function (){
//                shared_utitilies.load_page('/consignors');
//            });

            consignor.elements.modal_consignor_profile.$btn_ok.bind('click', function (){
                consignor.modal_consignor_profile.save_profile();
            });

//            consignor.elements.modal_consignor_profile.$modal.modal('show');
            consignor.elements.modal_consignor_details.$modal.modal('show');

            /* Google Map */
            $('#geo_map').locationpicker({
                location: {latitude: 46.15242437752303, longitude: 2.7470703125},
                radius: 300,
                inputBinding: {
                    latitudeInput: $('#input_lat'),
                    longitudeInput: $('#input_lng')//,
                    //radiusInput: $('#us2-radius'),
                    //locationNameInput: $('#input_geo_address')
                }//,
                //enableAutocomplete: true,
                //onchanged: function(currentLocation, radius, isMarkerDropped) {
//                    alert("Location changed. New location (" + currentLocation.latitude + ", " + currentLocation.longitude + ")");
                //}
            });

            /* Buttons */
            /* New Contact */
            $('#btn_add_contact').click(function (){
                var $list_contact = $('#list_contacts');
                consignor.modal_consignor_details.addContact($list_contact);
            });
        }
    }

    consignor.init();

    /* NOTE: There is a dependency in base.js for geo map loading due to race condition */
})(jQuery)