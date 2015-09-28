@extends('layout')
@section('content')
@inject('departments', 'App\Department')
<?php $floorcrumb = isset($floor) ? 'floors.edit' : 'floors.create'; ?>

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
                    {!! Form::label('department_id', 'Department:') !!} <span class="text-danger">*</span>
                    {!! Form::select('department_id', array('' => 'Select Department') + (array)$departments->lists('name', 'id')->all(), null, ['class' => 'form-control chosen-input']) !!}
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
                    <a href="/floors" class="btn btn-default">Cancel</a>
                </div>
            </div>
        {!! Form::close() !!}
    </div>
</section>
@stop