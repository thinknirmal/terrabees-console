<link href="${request.static_url('console:static/css/create-consignor.css')}" rel="stylesheet" />

<!-- Modal -->
<div id="modal-consignor-profile" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12">
                        <h1 class="modal-title text-navy">Create Consinor <button type="button" class="close pull-right" data-dismiss="modal">&times;</button></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <form role="form" class="form-horizontal" id="form-consignor-profile">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="consignor_name" id="consignor_name" onkeyup="consignor.modal_consignor_profile.check_inputs()" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Description</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control no-resize" rows="5" name="consignor_description" id="consignor_description" onkeyup="consignor.modal_consignor_profile.check_inputs()"></textarea>
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="button" class="btn btn-default" data-dismiss="modal" id="btn_cancel_consignor_creation">Cancel</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal" id="btn_save_consignor_profile" disabled="true">OK</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="modal-consignor-details" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="tabs-container">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1"> This is tab</a></li>
                        <li class=""><a data-toggle="tab" href="#tab-2">This is second tab</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="panel-body">
                                <strong>Lorem ipsum dolor sit amet, consectetuer adipiscing</strong>

                                <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of
                                    existence in this spot, which was created for the bliss of souls like mine.</p>

                                <p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at
                                    the present moment; and yet I feel that I never was a greater artist than now. When.</p>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <div class="panel-body">
                                <strong>Donec quam felis</strong>

                                <p>Thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects
                                    and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath </p>

                                <p>I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite
                                    sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!--<div class="row">
                    <div class="col-sm-12">
                        <h1 class="modal-title text-navy">Create Consinor <button type="button" class="close pull-right" data-dismiss="modal">&times;</button></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <form role="form" class="form-horizontal" id="form-consignor-profile">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" name="consignor_name" id="consignor_name" onkeyup="consignor.modal_consignor_profile.check_inputs()" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Description</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control no-resize" rows="5" name="consignor_description" id="consignor_description" onkeyup="consignor.modal_consignor_profile.check_inputs()"></textarea>
                                </div>
                            </div>
                            <div class="pull-right">
                                <button type="button" class="btn btn-default" data-dismiss="modal" id="btn_cancel_consignor_creation">Cancel</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal" id="btn_save_consignor_profile" disabled="true">OK</button>
                            </div>
                        </form>
                    </div>
                </div>-->
            </div>
        </div>
    </div>
</div>
<div class="row wrapper border-bottom page-heading background-dark-blue">
    <div class="row">
        <div class="background-warning animated fadeInDown" id="page-title-warning">Caution: Make sure to save your consignor by clicking "Save" button.</div>
    </div>
    <div class="row" id="row_consignor_name">
        <div class="col-sm-12">
            <a class="t-cell btn_edit" data-toggle="modal" data-target="#modal-consignor-profile"></a>
            <h1 class="t-cell text-navy" id="label_consignor_name" name="label_consignor_name">New Consignor</h1>
        </div>
    </div>
    <div class="row not_first" id="row_consignor_desc">
        <div class="col-sm-12">
            <a class="t-cell btn_edit" data-toggle="modal" data-target="#modal-consignor-profile"></a>
            <p class="t-cell" id="label_consignor_desc" name="label_consignor_desc">Description</p>
        </div>
    </div>
</div>

<div class="row wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-4 page-title">
            <h3>Addresses</h3>
        </div>
        <div class="col-lg-8 text-right">
            <a class="btn btn-w-m btn-danger" href="#">New Address</a>
        </div>
    </div>
</div>

<script type="text/javascript" src="${request.static_url('console:static/js/create-consignor.js')}"></script>