$(document).ready(function () {
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
        }
    }

    consignor.init();
})