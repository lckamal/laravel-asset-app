@extends('layout')

@section('content')
<section class="content-header">
  <h1>Buildings</h1>
  {!! Breadcrumbs::render('buildings.index') !!}
</section>
<section class="content">
    @include('buildings.tabs', ['active' => 'list'])
    <div class="box box-info">
        <div class="box-header with-border">
          @include('partials.filter', ['resetUrl' => '/buildings'])
        </div>
        <div class="box-body table-responsive no-padding">
            @if(count($buildings))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>location</th>
                        <th>location</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($buildings as $building)
                        <tr>
                            <td>{{ $building->id }}</td>
                            <td>{{ $building->name }}</td>
                            <td>{{ $building->latitude }}, {{ $building->longitude }}</td>
                            <td>
                                <a href="/floors?building_id={{ $building->id }}" class="btn btn-primary btn-xs">Floors</a>
                                <a href="/buildings/{{ $building->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/buildings/delete/{{ $building->id }}" class="btn btn-danger btn-xs confirm"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
            @else
            <div class="alert alert-info">
                There are no buildings added. <a href="/buildings/create">Add Building</a>
            </div>
            @endif
        </div>
        <div class="box-footer clearfix">
            {!! $buildings->render() !!}
        </div>
    </div>
</section>
@stop