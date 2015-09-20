@extends('layout')

@section('content')
<section class="content-header">
  <h1>Assets</h1>
  {!! Breadcrumbs::render('assets.index') !!}
</section>
<section class="content">
    @include('assets.partials.tabs', ['active' => 'list'])

    @if(count($assets))
    <div class="box">
        <div class="box-header with-border">
            @include('assets.partials.filter')
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
                                <a href="/assets/{{ $asset->id }}" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> View</a>
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