@extends('layout')
@section('content')
<section class="content-header">
  <h1>{{ $floor->name }}</h1>
  {!! Breadcrumbs::render('floors.show') !!}
</section>
<section class="content">
    @include('floors.partials.tabs', ['active' => 'map'])
    <div class="box box-info">
        <div class="box-body asset-wrapper">
            <span class="help-block">Drap and drop asset markers to the floor map.</span>
            <hr />
            <div class="draggable-assets">
                @if(count($floor->assets))
                    @foreach($floor->assets as $asset)
                    <img 
                        class="draggable" 
                        src="/images/marker-icon.png" 
                        data-toggle="tooltip" alt="{{ $asset->name }}" 
                        data-id="{{ $asset->id }}" 
                        style="position: relative; left: {{$asset->position_left}}px; top: {{$asset->position_top}}px;" 
                        title="{{ $asset->name }}">
                    @endforeach
                @else
                <div class="alert alert-info">
                    There are no assets in the floor. <a href="/assets/create">Add Asset</a>
                </div>
                @endif
            </div>
            <div class="droppable-assets" id="droppable-assets">
                @if($floor->image)
                    <img class="img-responsive floor-image" src="{{$floor->image}}" alt="">
                @endif
            </div>
        </div>
    </div>
</section>
@stop
@section('scripts.footer')
<style type="text/css">
    .asset-wrapper hr{
        margin:5px 0;
    }
    .draggable{
        display:inline-block;
    }
    .draggable-assets{
        margin-bottom:10px;
    }
    .droppable-assets{
        min-height:600px;
        display:block;
        width:100%;
        background:#eee;
    }
    .floor-image{
        min-width:100%;
    }
</style>
<script>
  $(function() {
    $( ".draggable" ).draggable();

    $( "#droppable-assets" ).droppable({
        drop: function( event, ui ) {
            var asset_id = $(ui.draggable).data('id');
            var position_top = $(ui.draggable).position().top;
            var position_left = $(ui.draggable).position().left;

            $.ajax({
                url: '/assets/update_position',
                type: "POST",
                data: {  id: asset_id, position_top : position_top, position_left : position_left, _token: '{!! csrf_token() !!}' },
                dataType: "html",
            });
        }
    });
  });
  </script>
@stop