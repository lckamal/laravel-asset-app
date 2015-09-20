@extends('layout')

@section('content')
@inject('departments', 'App\Department')
@inject('categories', 'App\Category')
@inject('vendors', 'App\Vendor')
<section class="content-header">
  <h1>Assets</h1>
  {!! Breadcrumbs::render('assets.index') !!}
</section>
<section class="content">
    <div class="clearfix">
    <div class="pull-left">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" class="active">
                <a href="/assets"><i class="fa fa-list"></i> List View</a>
            </li>
            <li role="presentation">
                <a href="/assets/grid"><i class="fa fa-th-large"></i> Grid View</a>
            </li>
            <li role="presentation">
                <a href="/assets/map"><i class="fa fa-map-signs"></i> Map View</a>
            </li>
        </ul>
    </div>
    <div class="pull-right">
        <a href="/assets/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Asset</a>
    </div>
    </div>

    @if(count($assets))
    <div class="box">
        <div class="box-header with-border">
            <div class="box-search">
                <form action="" method="get" class="form-inline" role="form">
                                   
                    <div class="form-group">
                        {!! Form::text('q', Request::get('q'), ['class' => 'form-control', 'placeholder' => 'Search here..']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::select('department_id', array('' => 'Department') + (array)$departments->lists('name', 'id')->all(), Request::get('department_id'), ['class' => 'form-control chosen-input']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::select('category_id', array('' => 'Category') + (array)$categories->lists('name', 'id')->all(), Request::get('category_id'), ['class' => 'form-control chosen-input']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::select('vendor_id', array('' => 'Vendor') + (array)$vendors->lists('name', 'id')->all(), Request::get('vendor_id'), ['class' => 'form-control chosen-input']) !!}
                    </div>
                    <div class="form-group">
                        {!! Form::select('status', array('' => 'Status', 'active' => 'Active', 'inactive' => 'Inactive', 'repair' => 'In repair'), Request::get('status'), ['class' => 'form-control chosen-input']) !!}
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                    <a href="/assets" class="btn btn-default">Reset</a>
                  </form>
            </div>
        </div>
        <div class="box-body table-responsive no-padding">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Asset No.</th>
                        <th>Name</th>
                        <th>Department</th>
                        <th>location</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($assets as $asset)
                        <tr>
                            <td>{{ $asset->id }}</td>
                            <td>{{ $asset->asset_no }}</td>
                            <td>{{ $asset->name }}</td>
                            <td>{{ $asset->department->name }}</td>
                            <td>{{ $asset->location_lat }} {{ $asset->location_long }}</td>
                            <td>{{ $asset->status ? 'Active' : 'Inactive' }}</td>
                            <td>
                                <a href="/assets/{{ $asset->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/assets/delete/{{ $asset->id }}" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
        </div>
        <div class="box-footer clearfix">
            {!! $assets->render() !!}
        </div>
    </div>
    @else
        <div class="alert alert-info">
            There are no assets added. <a href="/assets/create">Add Asset</a>
        </div>
    @endif
</section>
<style type="text/css">
    .box-search select{
        max-width:160px;
    }
</style>
@stop