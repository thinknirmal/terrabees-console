$(document).ready(function (){
    /** Report Date Range **/
    $('#pickups-report-range #report-range-content').html(moment().subtract(29, 'days').format('MMM D, YYYY') + ' - ' + moment().format('MMM D, YYYY'));

    $('#pickups-report-range').daterangepicker({
        format: 'MM/DD/YYYY',
        startDate: moment().subtract(29, 'days'),
        endDate: moment(),
        minDate: '01/01/2012',
        maxDate: '12/31/2015',
        dateLimit: { days: 60 },
        showDropdowns: true,
        showWeekNumbers: true,
        timePicker: false,
        timePickerIncrement: 1,
        timePicker12Hour: true,
        ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment()],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
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
        $('#pickups-report-range #report-range-content').html(start.format('MMM D, YYYY') + ' - ' + end.format('MMM D, YYYY'));
    });


    /** Queued Pickups Table **/
    $('#pickups-table-all').dataTable({
        "dom": '<".dataTables-toolkit"Tf><it><lp>',
        "columnDefs": [{"targets": [3, 4], "orderable": false}],
        "pagingType": "full_numbers",
        "pageLength": 10,
        "tableTools": {
            "sSwfPath": "swf/copy_csv_xls_pdf.swf"
        }
    });
});