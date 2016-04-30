<%block name="css">
    <link href="${request.static_url('console:static/css/create-consignor.css')}" rel="stylesheet" />
</%block>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12 page-title">
            <h1>Create Consignor</h1>
        </div>
    </div>
    <div class="row not_first">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Consignor Profile</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#">Config option 1</a>
                            </li>
                            <li><a href="#">Config option 2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Name</label>
                            <div class="col-sm-10"><input type="text" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Description</label>
                            <div class="col-sm-10"><input type="text" class="form-control"></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="ibox float-e-margins">
                <div class="ibox-title background-primary">
                    <h5>Address <span class="address_number">1</span></h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#">Config option 1</a>
                            </li>
                            <li><a href="#">Config option 2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Name of Address</label>
                            <div class="col-sm-10"><input type="text" class="form-control"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Location</label>
                            <div class="col-sm-10">
                                <div class="row">
                                    <div class="col-sm-2"><input type="text" class="form-control" placeholder="Unit" /></div>
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="Sub Premise" /></div>
                                    <div class="col-sm-6"><input type="text" class="form-control" placeholder="Premise" /></div>
                                </div>
                                <div class="row not_first">
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="Thoroughfare" /></div>
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="Sub District" /></div>
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="District" /></div>
                                </div>
                                <div class="row not_first">
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="City" /></div>
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="State" /></div>
                                    <div class="col-sm-4"><input type="text" class="form-control" placeholder="Country" /></div>
                                </div>
                                <div class="row not_first">
                                    <div class="col-sm-2"><input type="text" class="form-control" placeholder="Postal Code" /></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Geo Location</label>
                            <div class="col-sm-10"><button type="button" class="btn btn-primary">Browse</button></div>
                        </div>
                        <!--<div class="hr-line-dashed"></div>-->

                        <!-- Contacts -->
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Contacts</h5>
                            </div>
                            <div class="address_contact">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title background-primary">
                                        <h5><i class="fa fa-user" aria-hidden="true"></i> Contact <span class="contact_number">1</span></h5>
                                        <div class="ibox-tools">
                                            <a class="collapse-link">
                                                <i class="fa fa-chevron-up"></i>
                                            </a>
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                                <i class="fa fa-wrench"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown-user">
                                                <li><a href="#">Config option 1</a>
                                                </li>
                                                <li><a href="#">Config option 2</a>
                                                </li>
                                            </ul>
                                            <a class="close-link">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="ibox-content background-dark-blue contact-content">
                                        <form method="get" class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Name</label>
                                                <div class="col-sm-10">
                                                    <div class="row">
                                                        <div class="col-sm-6"><input type="text" class="form-control" placeholder="First Name" /></div>
                                                        <div class="col-sm-6"><input type="text" class="form-control" placeholder="Last Name" /></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Phone</label>
                                                <div class="col-sm-10">
                                                    <div class="input-group">
                                                        <div class="input-group-btn">
                                                            <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button">Country &nbsp;<span class="caret"></span></button>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="#">TH</a></li>
                                                                <li><a href="#">VN</a></li>
                                                                <li><a href="#">ID</a></li>
                                                            </ul>
                                                        </div>
                                                        <div class="col-sm-6"><input type="text" class="form-control" placeholder="Phone Number" /></div>
                                                        <div class="col-sm-6"><input type="text" class="form-control" placeholder="Extension" /></div>
                                                        <!--<div class="col-sm-2"><input type="text" class="form-control" placeholder="Country Code" /></div>-->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">E-mail</label>
                                                <div class="col-sm-10"><input type="text" class="form-control" /></div>
                                            </div>
                                        </form>
                                    </div>
                                    <div id="contact_button_panel">
                                        <button class="btn btn-primary">Add Contact</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Dispatches -->
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>Dispatches</h5>
                            </div>
                            <div class="dispatch">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-title background-primary">
                                        <h5><i class="fa fa-clock-o" aria-hidden="true"></i> Dispatch <span class="dispatch_number">1</span></h5>
                                        <div class="ibox-tools">
                                            <a class="collapse-link">
                                                <i class="fa fa-chevron-up"></i>
                                            </a>
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                                <i class="fa fa-wrench"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown-user">
                                                <li><a href="#">Config option 1</a>
                                                </li>
                                                <li><a href="#">Config option 2</a>
                                                </li>
                                            </ul>
                                            <a class="close-link">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="ibox-content background-dark-blue contact-content">
                                        <form method="get" class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Time</label>
                                                <div class="col-sm-10">
                                                    <div class="col-sm-6"><input type="text" class="form-control" placeholder="Start Time" /></div>
                                                    <div class="col-sm-6"><input type="text" class="form-control" placeholder="End Time" /></div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div id="contact_button_panel">
                                        <button class="btn btn-primary">Add Dispatch</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>