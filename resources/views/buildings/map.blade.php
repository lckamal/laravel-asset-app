@extends('layout')

@section('content')
<section class="content-header">
  <h1>Buildings</h1>
  {!! Breadcrumbs::render('buildings.index') !!}
</section>
<section class="content">
    @include('buildings.tabs', ['active' => 'map'])
    <div class="box box-info">    
        <div id="map-canvas"></div>
    </div>
    <script>
    function initMap() {
        window.map = new google.maps.Map(document.getElementById('map-canvas'), {
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var bounds = new google.maps.LatLngBounds();
        var infowindow = new google.maps.InfoWindow();    

        @foreach($buildings as $item)

          var marker = new google.maps.Marker({
            position: new google.maps.LatLng({{$item->latitude}},{{$item->longitude}}),
            map: map,
            title: "{{$item->name}}"
          });

          //extend the bounds to include each marker's position
          bounds.extend(marker.position);
          var i = {{$item->id}};
          google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function(infoWindowContent) {
                var infoWindowContent = '<h3 class="iw-title">{{$item->name}}</h3>' +
                    '<table class="table table-stripped">' +
                      '<tr>' +
                          '<td>Floors:</td>' + 
                          '<td>{{ $item->floors()->count() }}</td>' +
                          '<td><a class="btn btn-xs btn-link" href="/floors?building_id={{$item->id}}"><i class="fa fa-eye"></i> View</a></td>' +
                      '</tr><tr>' +
                        '<td>Assets:</td>' +
                        '<td>{{ $item->assets()->count() }}</td>' +
                        '<td><a class="btn btn-xs btn-link" href="/assets?building_id={{$item->id}}"><i class="fa fa-eye"></i> View</a></td>' +
                      '</tr>' +
                    '</table>';
              infowindow.setContent(infoWindowContent);
              infowindow.open(map, marker);
            }
          })(marker, i));
        
        @endforeach

        //now fit the map to the newly inclusive bounds
        map.fitBounds(bounds);

        //(optional) restore the zoom level after the map is done scaling
        var listener = google.maps.event.addListener(map, "idle", function () {
            map.setZoom(3);
            google.maps.event.removeListener(listener);
        });
    }
    
    function loadScript() {
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&' + 'callback=initMap';
        document.body.appendChild(script);
    }

    window.onload = loadScript;
    </script>

</section>
<style>
#map-canvas {
    margin: 0;
    padding: 0;
    height: 550px;
    max-width: none;
}
#map-canvas .iw-title {
    font-size:20px;
    margin:5px 0;
}
#map-canvas hr{
    margin:5px 0;
}
</style>
@stop