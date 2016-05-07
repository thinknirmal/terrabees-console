<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Terrabees</title>

        <link href="${request.static_url('console:static/css/bootstrap.min.css')}" rel="stylesheet">
        <link href="${request.static_url('console:static/font-awesome/css/font-awesome.css')}" rel="stylesheet">

        <link href="${request.static_url('console:static/css/animate.css')}" rel="stylesheet">
        <link href="${request.static_url('console:static/css/style.css')}" rel="stylesheet">
        <link href="${request.static_url('console:static/css/base.css')}" rel="stylesheet">
        <%block name="css"></%block>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <span class="profile-logo">
                                    <img alt="image" src="${request.static_url('console:static/img/logo_invert.png')}" />
                                </span>
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                    <span class="clear"><span class="block m-t-xs"><strong class="font-bold">Terrabees</strong>
                                    </span><span class="text-muted text-xs block">Support <b class="caret"></b></span></span>
                                </a>
                                <ul class="dropdown-menu m-t-xs">
                                    <li><a href="">Phone Support</a></li>
                                    <li><a href="">Issues &amp; Status</a></li>
                                    <li><a href="">Leave Feedback</a></li>
                                </ul>
                            </div>
                            <div class="logo-element">
                                Tb
                            </div>
                        </li>
                        <li class="nav_main_item">
                            <a class="nav_link" href="/"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>
                        </li>
                        <li class="nav_main_item">
                            <a class="nav_link" href="#"><i class="fa fa-paper-plane-o"></i> <span class="nav-label">Consignors</span> <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a class="nav_link" href="/consignors">All consignors</a></li>
                                <li><a class="nav_link" href="/create-consignor">Create consignor</a></li>
                                <li><a class="nav_link" href="/create-consignor2">Create consignor 2</a></li>
                                <!--<li><a href="/consignors">All consignors</a></li>
                                <li><a class="nav_link" href="/create-consignor">Create consignor</a></li>-->
                            </ul>
                        </li>
                        <li class="nav_main_item">
                            <a href="#"><i class="fa fa-truck"></i> <span class="nav-label">Pickups</span> <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a class="nav_link" href="/pickups">All pickups</a></li>
                                <li><a class="nav_link" href="/create-pickup">Create pickup</a></li>
                            </ul>
                        </li>
                        <li class="nav_main_item">
                            <a class="nav_link" href="#"><i class="fa fa-cogs"></i> <span class="nav-label">Settings</span> <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li><a class="nav_link" href="/pickup-points">Pickup points</a></li>
                            </ul>
                        </li>
                    </ul>

                </div>
            </nav>
            <div id="page-wrapper" class="gray-bg">
                <!--<div class="row border-bottom">
                    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i>
                            </a>
                            <form role="search" class="navbar-form-custom" method="post" action="#">
                                <div class="form-group">
                                    <input type="text" placeholder="Search for something..." class="form-control"
                                           name="top-search" id="top-search">
                                </div>
                            </form>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a id="logout" href="#">
                                    <i class="fa fa-sign-out"></i> Log out
                                </a>
                            </li>
                        </ul>

                    </nav>
                </div>-->
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top white-bg" role="navigation" style="margin-bottom: 0">
                        <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i></a>
                        </div>
                        <ul class="nav navbar-top-links navbar-right">
                            <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <span class="welcome-message">Acme Corporation <b class="caret"></b></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><small>Manage Account</small></a></li>
                                    <li><a href="#"><small>Billing</small></a></li>
                                    <li><a href="#"><small>Security Credentials</small></a></li>
                                    <li class="divider"></li>
                                    <li><a id="logout" href="#"><small>Logout</small></a></li>
                                </ul>
                            </li>
                            <li class="dropdown m-l-md">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                    <i class="fa fa-bell"></i><span class="label label-danger">2</span>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="#">
                                            <div>
                                                <i class="fa fa-info fa-fw"></i> Service disruption at <strong>Watthana</strong>
                                                <span class="pull-right text-muted small">4 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <div>
                                                <i class="fa fa-money fa-fw"></i> Payment overdue
                                                <span class="pull-right text-muted small">18 minutes ago</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>

                    </nav>
                </div>
                <div id="base_view_body"></div>
                ${self.body()}
                <div class="footer">
                    <div class="pull-right">
                        10GB of <strong>250GB</strong> Free.
                    </div>
                    <div>
                        <strong>Copyright &copy;</strong> Terrabees 2016
                    </div>
                </div>

            </div>
        </div>
        <!-- Main scripts -->
        <script type="text/javascript" src="${request.static_url('console:static/js/jquery-2.1.1.js')}"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/bootstrap.min.js')}"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/plugins/metisMenu/jquery.metisMenu.js')}"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/plugins/slimscroll/jquery.slimscroll.min.js')}"></script>

        <!-- Flot -->
        <script type="text/javascript" src="${request.static_url('console:static/js/plugins/flot/jquery.flot.js')}"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/plugins/flot/jquery.flot.time.js')}"></script>

        <!-- Custom and plugin javascript -->
        <script type="text/javascript" src="${request.static_url('console:static/js/inspinia.js')}"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/plugins/pace/pace.min.js')}"></script>

        <!-- Cookie -->
        <script type="text/javascript" src="${request.static_url('console:static/js/js.cookie.js')}"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/myCookie.js')}"></script>

        <!-- Google Map -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFnF8ufunhRJ1T-P1LGLHaK4RRUYl4C6s&libraries=places"></script>
        <script type="text/javascript" src="${request.static_url('console:static/js/plugins/locationpicker/locationpicker.jquery.js')}"></script>

        <script src="${request.static_url('console:static/js/base.js')}"></script>
        <%block name="js"></%block>
    </body>
</html>