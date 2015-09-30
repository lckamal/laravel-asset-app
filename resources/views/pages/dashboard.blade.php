@extends('layout')

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="/">Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          @can('manage_assets')
            <div class="col-lg-2 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>{{ $stats['assets'] }}</h3>
                  <p>Total assets</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="/assets" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            @endcan
            @can('manage_departments')
            <div class="col-lg-2 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>{{ $stats['departments'] }}</h3>
                  <p>Total departments</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="/departments" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            @endcan
            @can('manage_employees')
            <div class="col-lg-2 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>{{ $stats['employees'] }}</h3>
                  <p>Total employees</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="/employees" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            @endcan
            @can('manage_categories')
            <div class="col-lg-2 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-purple">
                <div class="inner">
                  <h3>{{ $stats['categories'] }}</h3>
                  <p>Total categories</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="/categories" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            @endcan
            @can('manage_vendors')
            <div class="col-lg-2 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>{{ $stats['vendors'] }}</h3>
                  <p>Total vendors</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="/vendors" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            @endcan
            @can('manage_users')
            <div class="col-lg-2 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-blue">
                <div class="inner">
                  <h3>{{ $stats['users'] }}</h3>
                  <p>Total users</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="/users" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            @endcan
        </div><!-- /.row -->
        @if(count($stats['buildings_data'])>0)
        <div class="row hidden-xs">
            <div class="col-md-12">
            <!-- BAR CHART -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title">No. of assets per building</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div>
                </div>
                <div class="box-body">
                  <div class="chart">
                    <canvas id="barChart" style="height:500px"></canvas>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
        </div>
            @section('scripts.footer')
            <script>
            $(function () {
                var buildingLabels = [];
                var buildingAssetCounts = [];
                @foreach($stats['buildings_data'] as $building)
                    buildingLabels.push("{{$building->name}}");
                    buildingAssetCounts.push({{$building->assets()->count()}});
                @endforeach
                /* ChartJS
                 * -------
                 * Here we will create a few charts using ChartJS
                 */
                 var areaChartData = {
                  labels: buildingLabels,
                  datasets: [
                    {
                      label: "Digital Goods",
                      fillColor: "rgba(60,141,188,0.9)",
                      strokeColor: "rgba(60,141,188,0.8)",
                      pointColor: "#3b8bba",
                      pointStrokeColor: "rgba(60,141,188,1)",
                      pointHighlightFill: "#fff",
                      pointHighlightStroke: "rgba(60,141,188,1)",
                      data: buildingAssetCounts
                    }
                  ]
                };
                //-------------
                //- BAR CHART -
                //-------------
                var barChartCanvas = $("#barChart").get(0).getContext("2d");
                var barChart = new Chart(barChartCanvas);
                var barChartData = areaChartData;
                barChartData.datasets[0].fillColor = "#00a65a";
                barChartData.datasets[0].strokeColor = "#00a65a";
                barChartData.datasets[0].pointColor = "#00a65a";
                var barChartOptions = {
                  //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
                  scaleBeginAtZero: true,
                  //Boolean - Whether grid lines are shown across the chart
                  scaleShowGridLines: true,
                  //String - Colour of the grid lines
                  scaleGridLineColor: "rgba(0,0,0,.05)",
                  //Number - Width of the grid lines
                  scaleGridLineWidth: 1,
                  //Boolean - Whether to show horizontal lines (except X axis)
                  scaleShowHorizontalLines: true,
                  //Boolean - Whether to show vertical lines (except Y axis)
                  scaleShowVerticalLines: true,
                  //Boolean - If there is a stroke on each bar
                  barShowStroke: true,
                  //Number - Pixel width of the bar stroke
                  barStrokeWidth: 2,
                  //Number - Spacing between each of the X value sets
                  barValueSpacing: 5,
                  //Number - Spacing between data sets within X values
                  barDatasetSpacing: 1,
                  //String - A legend template
                  legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>",
                  //Boolean - whether to make the chart responsive
                  responsive: true,
                  maintainAspectRatio: true
                };

                barChartOptions.datasetFill = false;
                barChart.Bar(barChartData, barChartOptions);
            });
            </script>
            @stop
        @endif
    </section>
</div>
@stop