@extends('layout')

@section('content')
<section class="content-header">
  <h1>Assets</h1>
  {!! Breadcrumbs::render('assets.index') !!}
</section>
<section class="content">
    @include('assets.partials.tabs', ['active' => 'list'])

    <div class="box box-info">
        <div class="box-header with-border">
            @include('assets.partials.filter')
        </div>
        <div class="box-body table-responsive">
            @if(count($assets))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Asset No.</th>
                        <th>Name</th>
                        <th>Department</th>
                        <th>Floor</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($assets as $asset)
                        <tr>
                            <td>{{ $asset->asset_no }}</td>
                            <td>{{ $asset->name }}</td>
                            <td>{{ $asset->department->name }}</td>
                            <td>{{ isset($asset->floor->name) ? $asset->floor->name : '' }}</td>
                            <td>{{ $asset->status ? 'Active' : 'Inactive' }}</td>
                            <td>
                                <a href="/assets/{{ $asset->id }}" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> View</a>
                                <a href="/assets/{{ $asset->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/assets/delete/{{ $asset->id }}" class="btn btn-danger btn-xs confirm"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
            @else
            <div class="alert alert-info">
                There are no assets. <a href="/assets/create">Add Asset</a>
            </div>
            @endif
        </div>
        <div class="box-footer clearfix">
            {!! $assets->render() !!}
        </div>
    </div>
    
</section>
@stop