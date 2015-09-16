@extends('layout')
@section('content')
@inject('departments', 'App\Department')
<?php $assetcrumb = isset($asset) ? 'assets.edit' : 'assets.create'; ?>

<section class="content-header">
  <h1>{{ $formTitle }}</h1>
  {!! Breadcrumbs::render($assetcrumb) !!}
</section>
<section class="content">
    <div class="box box-primary">
        @include('errors/validation')

        @if(isset($asset))
            {!! Form::model($asset, array('action' => ['AssetsController@update', $asset->id])) !!} 
            {!! Form::hidden('_method', 'PATCH') !!}
        @else
            {!! Form::open(array('url' => 'assets', 'enctype' => 'multipart/form-data')) !!}
        @endif
        <div class="box-body">
            <div class="form-group">
                {!! Form::label('department_id', 'Department:') !!}
                {!! Form::select('department_id', array('' => 'Select Department') + (array)$departments->lists('department_name', 'id')->all(), null, ['class' => 'form-control chosen-input']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('asset_name', 'Name:') !!}
                {!! Form::text('asset_name', old('asset_name'), ['class' => 'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('description', 'Description:') !!}
                {!! Form::textarea('description', old('description'), ['class' => 'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('location', 'Location:') !!}
                {!! Form::text('location', old('location'), ['class' => 'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('status', 'Status:') !!}
                {!! Form::select('status', array('1' => 'Active', '0' => 'Inactive'), null, ['class' => 'form-control chosen-input']) !!}
            </div>

            <hr>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Save</button>
                <a href="/assets" class="btn btn-default">Cancel</a>
            </div>
        </div> 
        {!! Form::close() !!}
    </div>
</section>
@stop