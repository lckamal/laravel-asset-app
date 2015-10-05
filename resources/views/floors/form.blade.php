@extends('layout')
@section('content')
@inject('buildings', 'App\Building')
<?php 
$floorcrumb = isset($floor) ? 'floors.edit' : 'floors.create'; 
$building_id = Request::get('building_id');
?>

<section class="content-header">
  <h1>{{ $formTitle }}</h1>
  {!! Breadcrumbs::render($floorcrumb) !!}
</section>
<section class="content">
    <div class="box box-primary">
        @include('errors/validation')

        @if(isset($floor))
            {!! Form::model($floor, array('action' => ['FloorsController@update', $floor->id], 'files' => true)) !!} 
            {!! Form::hidden('_method', 'PATCH') !!}
        @else
            {!! Form::open(array('url' => 'floors', 'enctype' => 'multipart/form-data')) !!}
        @endif
            <div class="box-body">
                <div class="form-group">
                    {!! Form::label('building_id', 'Building:') !!} <span class="text-danger">*</span>
                    {!! Form::select('building_id', array('' => 'Select Building') + (array)$buildings->lists('name', 'id')->all(), $building_id, ['class' => 'form-control chosen-input']) !!}
                </div>

                <div class="form-group">
                    {!! Form::label('name', 'Name:') !!} <span class="text-danger">*</span>
                    {!! Form::text('name', old('name'), ['class' => 'form-control']) !!}
                </div>
    
                <div class="form-group">
                    <div class="row">
                        <div class="col-sm-6">
                            {!! Form::label('Image') !!} <small><span class="help-inline">(jpg,png)</span></small>
                            {!! Form::file('image', ['class' => 'form-control']) !!}
                            @if(isset($floor->image))
                                <span class="help-block">
                                    Existing image will be replaced if new image is selected.
                                </span>
                            @endif
                        </div>
                        <div class="col-sm-6">
                            @if(isset($floor->image))
                                <img src="{{ $floor->image }}" alt="" height="100" />
                            @endif
                        </div>
                    </div>
                </div>

                <hr>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="/floors?building_id={{ $building_id }}" class="btn btn-default">Cancel</a>
                </div>
            </div>
        {!! Form::close() !!}
    </div>
</section>
@stop