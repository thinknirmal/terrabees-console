<%inherit file="base.mako"/>

<%block name="css">
    <link href="${request.static_url('console:static/css/plugins/dataTables/datatables.min.css')}" rel="stylesheet" />
    <link href="${request.static_url('console:static/css/plugins/daterangepicker/daterangepicker.css')}" rel="stylesheet" />
</%block>

<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-lg-4 page-title">
            <h1>All Consignors</h1>
        </div>
        <div class="col-lg-4 text-right">
            <a class="btn btn-w-m btn-danger" href="/create-consignor">Create New Consignor</a>
        </div>
        <div class="col-lg-4">
            <div id="consignors-report-range" class="form-control text-center">
                <div class="col-lg-1"><i class="fa fa-calendar"></i></div><div class="col-lg-9 text-center"><small id="report-range-content"></small></div><div class="col-lg-1"><b class="caret"></b></div>
            </div>
        </div>
    </div>
    <div class="row not_first">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table id="consignors-table-all" class="table table-striped table-bordered table-hover" >
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Docket No.</th>
                                    <th>Consignor Location</th>
                                    <th>Destination</th>
                                    <th>Flags</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="gradeX">
                                    <td>1</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Bulky</span> <span class="badge badge-success">Night</span></td>
                                    <td class="center">Submitted</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>2</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Submitted</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>3</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>4</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>5</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>6</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>7</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>8</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>9</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>10</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>11</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>12</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>13</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>14</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>15</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>16</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>17</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>18</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>19</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>20</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>21</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>22</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>23</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>24</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>25</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>26</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>27</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>28</td>
                                    <td>5705473990173</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td class="overflow-ellipsis">34/123, Top View Tower, Khlong Toei, Sukhumvit Soi 59, Bangkok.</td>
                                    <td class="center"><span class="badge badge-primary">Geo</span> <span class="badge badge-danger">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>29</td>
                                    <td>5705849560112</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">120, One Pacific Place, Sukhumvit Road, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Geo</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                                <tr class="gradeX">
                                    <td>30</td>
                                    <td>5705689366829</td>
                                    <td><abbr title="23/1, Acme Corporation, Phra Khanong Industrial Estate, Khlong Toei, Bangkok 10110.">Warehouse 1</abbr></td>
                                    <td><div class="table-address">77/463, Waterford Park Rama 4, Soi Pumichit, Rama 4 Road, Khlong Toei, Bangkok 10110.</div></td>
                                    <td class="center"><span class="badge badge-primary">Slot</span></td>
                                    <td class="center">Queued</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%block name="js">
    <script src="${request.static_url('console:static/js/plugins/jeditable/jquery.jeditable.js')}"></script>
    <script src="${request.static_url('console:static/js/plugins/dataTables/datatables.min.js')}"></script>
    <script src="${request.static_url('console:static/js/plugins/moment/moment-with-locales.min.js')}"></script>
    <script src="${request.static_url('console:static/js/plugins/daterangepicker/daterangepicker.js')}"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function (){
            /** Report Date Range **/
            $('#consignors-report-range #report-range-content').html(moment().subtract(29, 'days').format('MMM D, YYYY') + ' - ' + moment().format('MMM D, YYYY'));

            var today = new Date();
            //var yesterday = new Date();
            //yesterday.setDate(today.getDate() - 1);
            //var maxDate = yesterday.toLocaleDateString();
            //console.log(maxDate);

            $('#consignors-report-range').daterangepicker({
                format: 'MM/DD/YYYY',
                startDate: moment().subtract(29, 'days'),
                endDate: moment(),
                minDate: '01/01/2012',
                //maxDate: '12/31/2015',
                maxDate: today,
                dateLimit: { days: 60 },
                showDropdowns: true,
                showWeekNumbers: true,
                timePicker: false,
                timePickerIncrement: 1,
                timePicker12Hour: true,
                /*ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment()],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },*/
                opens: 'left',
                drops: 'down',
                buttonClasses: ['btn', 'btn-sm'],
                applyClass: 'btn-primary',
                cancelClass: 'btn-default',
                separator: ' to ',
                locale: {
                    applyLabel: 'Submit',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr','Sa'],
                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                }
            }, function(start, end, label) {
                $('#consignors-report-range #report-range-content').html(start.format('MMM D, YYYY') + ' - ' + end.format('MMM D, YYYY'));
            });//.done(function (){
                //$('.daterangepicker.dropdown-menu.opensleft.show-calendar .ranges li:eq(4)').click();
            //});

            /** Queued Consignors Table **/
            /*
            $('#consignors-table-all').dataTable({
                "dom": '<".dataTables-toolkit"Tf><it><lp>',
                "columnDefs": [{"targets": [3, 4], "orderable": false}],
                "pagingType": "full_numbers",
                "pageLength": 10,
                "tableTools": {
                    "sSwfPath": "swf/copy_csv_xls_pdf.swf"
                }
            });
            */

            $('#consignors-table-all').DataTable({
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy' },
                    { extend: 'csv' },
                    { extend: 'excel', title: 'ExampleFile' },
                    { extend: 'pdf', title: 'ExampleFile' },

                    { extend: 'print', customize: function (win){
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                            .addClass('compact')
                            .css('font-size', 'inherit');
                        }
                    }
                ]
            });
        });
    </script>
</%block>