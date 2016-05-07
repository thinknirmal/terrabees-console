<%inherit file="base.mako"/>

<%block name="css">
    <link href="${request.static_url('console:static/css/create-consignor.css')}" rel="stylesheet" />
</%block>

<!--
    Modal: Consignor Profile
    This modal is used mainly to get the name and description of the consignor from user
-->

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

<!--
    Modal: Consignor Details
    This modal comprises 3 tabs
    1) Address: The location of the consignor
    2) Contacts: The list of contact person/people for the consignor
    3) Dispatches: The list of dispatches for the consignor
-->
<div id="modal-consignor-details" class="modal fade" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="tabs-container">
                    <ul class="nav nav-tabs">
                        <li class="active"><a data-toggle="tab" href="#tab-1">Address</a></li>
                        <li><a data-toggle="tab" href="#tab-2">Contacts</a></li>
                        <li><a data-toggle="tab" href="#tab-3">Dispatches</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane active">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <form role="form" class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Name of Address</label>
                                                <div class="col-sm-9"><input type="text" class="form-control"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Location</label>
                                                <div class="col-sm-9">
                                                    <div class="row addr_row1">
                                                        <div class="col-sm-2"><input type="text" class="form-control" placeholder="Unit" /></div>
                                                        <div class="col-sm-4"><input type="text" class="form-control" placeholder="Sub Premise" /></div>
                                                        <div class="col-sm-6"><input type="text" class="form-control" placeholder="Premise" /></div>
                                                    </div>
                                                    <div class="row addr_row2 not_first">
                                                        <div class="col-sm-4"><input type="text" class="form-control" placeholder="Street" /></div>
                                                        <div class="col-sm-4"><input type="text" class="form-control" placeholder="Sub District" /></div>
                                                        <div class="col-sm-4 keep_padding_right"><input type="text" class="form-control" placeholder="District" /></div>
                                                    </div>
                                                    <div class="row addr_row3 not_first">
                                                        <div class="col-sm-4"><input type="text" class="form-control" placeholder="City" /></div>
                                                        <div class="col-sm-4"><input type="text" class="form-control" placeholder="State" /></div>
                                                        <div class="col-sm-4 keep_padding_right"><input type="text" class="form-control" placeholder="Country" /></div>
                                                    </div>
                                                    <div class="row addr_row4 not_first">
                                                        <div class="col-sm-4"><input type="text" class="form-control" placeholder="Postal Code" /></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-3 control-label">Geo Location</label>
                                                <div class="col-sm-9">
                                                    <!--<div class="row">
                                                        <div class="col-sm-12">
                                                            <input type="text" class="form-control" placeholder="Type to find your location" id="input_geo_address" />
                                                        </div>
                                                    </div>-->
                                                    <div class="row" id="row_lat_lng">
                                                        <div class="col-sm-6">
                                                            <label class="col-sm-3 control-label">Lat:</label>
                                                            <div class="col-sm-9"><input type="text" class="form-control" id="input_lat" /></div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <label class="col-sm-3 control-label">Lng:</label>
                                                            <div class="col-sm-9"><input type="text" class="form-control" id="input_lng" /></div>
                                                        </div>
                                                    </div>
                                                    <div class="row not_first">
                                                        <div class="col-sm-12">
                                                            <div class="form-control" id="geo_map"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <button type="button" class="pull-right btn btn-danger" id="btn_add_contact">New Contact</button>
                                    </div>
                                </div>
                                <div class="row not_first">
                                    <div class="col-sm-12" id="list_contacts">
                                    </div>
                                </div>
                                <div class="contact is_template">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <form role="form" class="form-horizontal">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Contact <span class="contact_number"></span></label>
                                                    <div class="col-sm-9">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" placeholder="First Name" />
                                                            </div>
                                                            <div class="col-sm-6 keep_padding_right">
                                                                <input type="text" class="form-control" placeholder="Last Name" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-1">
                                                        <a class="btn btn-danger close-link"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Phone</label>
                                                    <div class="col-sm-9">
                                                        <div class="input-group phone_group">
                                                            <div class="input-group-btn country_code">
                                                                <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button">Country &nbsp;<span class="caret"></span></button>
                                                                <ul class="dropdown-menu">
                                                                    <li><a href="#">TH</a></li>
                                                                    <li><a href="#">VN</a></li>
                                                                    <li><a href="#">ID</a></li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-sm-6"><input type="text" class="form-control" placeholder="Phone Number" /></div>
                                                            <div class="col-sm-6 extension"><input type="text" class="form-control" placeholder="Extension" /></div>
                                                            <!--<div class="col-sm-2"><input type="text" class="form-control" placeholder="Country Code" /></div>-->
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">E-mail</label>
                                                    <div class="col-sm-9"><input type="text" class="form-control" /></div>
                                                </div>
                                            </form>
                                            <hr />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-3" class="tab-pane">
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

<div class="row wrapper border-bottom page-heading background-dark-blue" id="row-title">
    <div id="row_warning">
        <div class="col-sm-12">
            <div class="background-danger animated fadeInDown" id="page-title-warning">Caution: Make sure to save your consignor by clicking "Save" button.</div>
        </div>
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

<%block name="js">
    <script type="text/javascript" src="${request.static_url('console:static/js/create-consignor.js')}"></script>
</%block>