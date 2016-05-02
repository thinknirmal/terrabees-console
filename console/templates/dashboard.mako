<div class="wrapper wrapper-content animated fadeInRight">
    <div id="dash-traffic" class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <div class="col-lg-4">
                        <h5>Top 20 - Traffic &amp; Performance</h5>
                    </div>
                    <div class="col-lg-5">
                        <div id="dash-traffic-legend" class="pull-right"></div>
                    </div>
                    <div class="col-lg-3">
                        <div class="pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-xs btn-white active">Today</button>
                                <button type="button" class="btn btn-xs btn-white">Past week</button>
                                <button type="button" class="btn btn-xs btn-white">Past month</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="flot-chart">
                                <div id="dash-traffic-chart" class="flot-chart-content"></div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <ul class="stat-list">
                                <li>
                                    <h2 class="no-margins">12,645</h2>
                                    <small>Total shipments</small>
                                    <div class="stat-percent text-danger">-7% <i
                                            class="fa fa-level-down text-navy"></i></div>
                                    <div class="text-right">
                                        <small class="text-navy">compared to yesterday</small>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins ">4
                                        <small>hours</small>
                                        27
                                        <small>minutes</small>
                                    </h2>
                                    <small>Overall average lead time</small>
                                    <div class="stat-percent text-success">-3% <i
                                            class="fa fa-level-down text-navy"></i></div>
                                    <div class="text-right">
                                        <small class="text-navy">compared to yesterday</small>
                                    </div>
                                </li>
                                <li>
                                    <h2 class="no-margins ">0%</h2>
                                    <small>Capacity overrun</small>
                                    <div class="stat-percent">No change</div>
                                    <div class="text-right">
                                        <small class="text-navy">compared to yesterday</small>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="dash-quicklooks" class="row">
    <div class="col-lg-3">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">Now</span>
                <h5>Queued Pickups</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins">2,845</h1>

                <div class="stat-percent"><i class="fa fa-angle-right"></i> <a
                        href="{{pathFor route='pickups'}}">View all</a></div>
                <small>shipments</small>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">Now</span>
                <h5>Shipments in Transit</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins">9,800</h1>

                <div class="stat-percent"><i class="fa fa-angle-right"></i> <a href="#">View all</a></div>
                <small>shipments</small>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">Now</span>
                <h5>Current Disputes</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins text-danger">31</h1>

                <div class="stat-percent"><i class="fa fa-angle-right"></i> <a href="#">Resolve</a></div>
                <small>active disputes</small>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <span class="label label-success pull-right">Now</span>
                <h5>Queued Returns</h5>
            </div>
            <div class="ibox-content">
                <h1 class="no-margins">120</h1>

                <div class="stat-percent"><i class="fa fa-angle-right"></i> <a href="#">View all</a></div>
                <small>returnable shipments</small>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-6">
        <div class="ibox">
            <div class="ibox-title">
                <span class="label label-success pull-right">Today</span>
                <h5>Hourly Schedule</h5>
            </div>
            <div class="ibox-content">
                <div class="tb-dash-schedule-chart">
                    <div id="dash-schedule-chart" class="flot-chart-content" style="height: 123px;"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="ibox">
            <div class="ibox-title">
                <span class="label label-success pull-right">Today</span>
                <h5>Capacity Consumption</h5>
            </div>
            <div class="ibox-content">
                <div class="row">
                    <div class="col-lg-3">Reserved (8960)</div>
                    <div class="col-lg-7">
                        <div class="progress progress-small">
                            <div style="width: 100%;" class="progress-bar progress-bar-danger"></div>
                        </div>
                    </div>
                    <div class="col-lg-2 text-navy"><strong>0</strong> left</div>
                </div>
                <div class="row">
                    <div class="col-lg-3">Reserved (2240)</div>
                    <div class="col-lg-7">
                        <div class="progress progress-small">
                            <div style="width: 62%;" class="progress-bar"></div>
                        </div>
                    </div>
                    <div class="col-lg-2 text-navy"><strong>896</strong> left</div>
                </div>
                <div class="row">
                    <div class="col-lg-3">Reserved (560)</div>
                    <div class="col-lg-7">
                        <div class="progress progress-small">
                            <div style="width: 0%;" class="progress-bar"></div>
                        </div>
                    </div>
                    <div class="col-lg-2 text-navy"><strong>560</strong> left</div>
                </div>
                <div class="row">
                    <div class="col-lg-3">On-demand</div>
                    <div class="col-lg-9 text-navy"><strong>0</strong> used</div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        /** Top 20 - Traffic & Performance **/
        // Main Chart
        var shipments = [
            [0, 204], [1, 192], [2, 188], [3, 172],
            [4, 168], [5, 154], [6, 140], [7, 132],
            [8, 121], [9, 110], [10, 109], [11, 93],
            [12, 82], [13, 73], [14, 64], [15, 55],
            [16, 47], [17, 36], [18, 29], [19, 18],
            [20, 10]
        ];

        var leadTime = [
            [0, 120], [1, 150], [2, 130], [3, 140],
            [4, 140], [5, 160], [6, 250], [7, 240],
            [8, 270], [9, 280], [10, 290], [11, 260],
            [12, 340], [13, 350], [14, 311], [15, 380],
            [16, 380], [17, 411], [18, 411], [19, 460],
            [20, 460]
        ];

        var dataset = [
            {
                label: "Number of shipments",
                data: shipments,
                color: "#1ab394",
                bars: {
                    show: true,
                    align: "center",
                    barWidth: 0.6,
                    lineWidth: 0
                }
            }, {
                label: "Average lead time",
                data: leadTime,
                yaxis: 2,
                color: "#1C84C6",
                lines: {
                    lineWidth: 1,
                    show: true,
                    fill: true,
                    fillColor: {
                        colors: [{
                            opacity: 0.2
                        }, {
                            opacity: 0.2
                        }]
                    }
                },
                splines: {
                    show: false,
                    tension: 0.6,
                    lineWidth: 1,
                    fill: 0.1
                }
            }
        ];

        var options = {
            xaxis: {
                tickSize: 1,
                tickLength: 0,
                tickDecimals: 0,
                axisLabel: "Date",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Arial',
                axisLabelPadding: 10,
                color: "#d5d5d5"
            },
            yaxes: [{
                position: "left",
                color: "#d5d5d5",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Arial',
                axisLabelPadding: 3
            }, {
                position: "right",
                clolor: "#d5d5d5",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: ' Arial',
                axisLabelPadding: 67
            }
            ],
            legend: {
                noColumns: 2,
                labelBoxBorderColor: "#000000",
                labelFormatter: function (label, series) {
                    return '<div style="margin-right:20px;">' + label + '</div>';
                },
                container: '#dash-traffic-legend'
            },
            grid: {
                hoverable: true,
                borderWidth: 0
            },
            tooltip: true,
            tooltipOpts: {
                content: function (label, x, y) {
                    return label + ': ' + y;
                }
            }
        };

        $.plot($("#dash-traffic-chart"), dataset, options);


        /** Delivery Schedule **/
        // Main Chart
        var schedule = [
            [hourStamp(0), 72], [hourStamp(1), 5], [hourStamp(2), 3], [hourStamp(3), 0],
            [hourStamp(4), 0], [hourStamp(5), 2], [hourStamp(6), 29], [hourStamp(7), 117],
            [hourStamp(8), 85], [hourStamp(9), 92], [hourStamp(10), 96], [hourStamp(11), 121],
            [hourStamp(12), 130], [hourStamp(13), 172], [hourStamp(14), 165], [hourStamp(15), 157],
            [hourStamp(16), 183], [hourStamp(17), 170], [hourStamp(18), 175], [hourStamp(19), 204],
            [hourStamp(20), 206], [hourStamp(21), 180], [hourStamp(22), 60], [hourStamp(23), 12]
        ];

        var scheduleDataset = [
            {
                label: "Deliveries",
                data: schedule,
                color: "#1ab394",
                bars: {
                    show: true,
                    align: "center",
                    barWidth: 60 * 60 * 600,
                    lineWidth: 0
                }
            }
        ];

        var scheduleOptions = {
            xaxis: {
                mode: "time",
                timeformat: "%H",
                tickSize: [1, "hour"],
                tickLength: 0,
                axisLabel: "Time",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Arial',
                axisLabelPadding: 10,
                color: "#d5d5d5"
            },
            yaxis: {
                position: "left",
                color: "#d5d5d5",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Arial',
                axisLabelPadding: 3
            },
            grid: {
                hoverable: true,
                borderWidth: 0
            },
            legend: {
                position: 'nw',
                labelBoxBorderColor: "#000000"
            }
        };

        $.plot($("#dash-schedule-chart"), scheduleDataset, scheduleOptions);

        function hourStamp(hour) {
            var today = new Date();
            today.setUTCHours(hour);
            today.setUTCMinutes(0);
            today.setUTCMilliseconds(0);
            return today;
        }
    })
</script>