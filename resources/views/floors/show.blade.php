@extends('layout')
@section('content')
<section class="content-header">
  <h1>{{ $floor->name }}</h1>
  {!! Breadcrumbs::render('floors.show') !!}
</section>
<section class="content">
    @include('floors.partials.tabs', ['active' => 'list'])
    <div class="box box-info">
        <div class="box-header with-border">
            List of assets on the floor.
        </div>
        <div class="box-body table-responsive no-padding">
            @if(count($floor->assets))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>Asset No.</th>
                        <th>Name</th>
                        <th>Building</th>
                        <th>Floor</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($floor->assets as $asset)
                        <tr>
                            <td>{{ $asset->asset_no }}</td>
                            <td>{{ $asset->name }}</td>
                            <td>{{ isset($asset->building->name) ? $asset->building->name : '' }}</td>
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
                There are no floors added. <a href="/floors/create">Add Floor</a>
            </div>
            @endif
        </div>
        <div class="box-footer clearfix">
            <?php /* ?>{!! $assets->render() !!}<?php */ ?>
        </div>
    </div>
</section>
@stop