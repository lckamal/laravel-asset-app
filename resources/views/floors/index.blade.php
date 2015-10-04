@extends('layout')
@section('content')
<section class="content-header">
  <h1>Floors</h1>
  {!! Breadcrumbs::render('floors.index') !!}
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
          @include('floors.partials.filter', ['resetUrl' => '/floors'])
        </div>
        <div class="box-body table-responsive no-padding">
            @if(count($floors))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>SN</th>
                        <th>Name</th>
                        <th>Building</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($floors as $key => $floor)
                        <tr>
                            <td>{{ $page_start + $key + 1 }}</td>
                            <td>{{ $floor->name }}</td>
                            <td>{{ isset($floor->building->name) ? $floor->building->name : '' }}</td>
                            <td>
                                <a href="/floors/{{ $floor->id }}" class="btn btn-primary btn-xs">Assets</a>
                                <a href="/floors/{{ $floor->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/floors/delete/{{ $floor->id }}" class="btn btn-danger btn-xs confirm"><i class="fa fa-trash"></i> Delete</a>
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
            {!! $floors->render() !!}
        </div>
    </div>
</section>
@stop