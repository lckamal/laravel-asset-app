@extends('layout')
@section('content')
<?php $buildingcrumb = isset($building) ? 'buildings.edit' : 'buildings.create'; ?>

<section class="content-header">
  <h1>{{ $formTitle }}</h1>
  {!! Breadcrumbs::render($buildingcrumb) !!}
</section>
<section class="content">
    <div class="box box-primary">
        @include('errors/validation')

        @if(isset($building))
            {!! Form::model($building, array('action' => ['BuildingsController@update', $building->id])) !!} 
            {!! Form::hidden('_method', 'PATCH') !!}
        @else
            {!! Form::open(array('url' => 'buildings', 'enctype' => 'multipart/form-data')) !!}
        @endif
            <div class="box-body">
                <div class="form-group">
                    {!! Form::label('name', 'Building Name:') !!}
                    {!! Form::text('name', old('name'), ['class' => 'form-control']) !!}
                </div>


                <div class="form-group">
                    {!! Form::label('latitude', 'Location:') !!} <span class="text-danger">*</span>
                    <div class="form-inline">
                        {!! Form::text('latitude', old('latitude'), ['class' => 'form-control', 'placeholder' => 'Latitude']) !!}
                        {!! Form::text('longitude', old('longitude'), ['class' => 'form-control', 'placeholder' => 'Longitude']) !!}
                    </div>
                </div>

                <hr>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <a href="/buildings" class="btn btn-default">Cancel</a>
                </div>
            </div>
        {!! Form::close() !!}
    </div>
</section>
@stop