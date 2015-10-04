@extends('layout')

@section('content')
<section class="content-header">
  <h1>Departments</h1>
  {!! Breadcrumbs::render('departments.index') !!}
</section>
<section class="content">
    <div class="box box-info">
        <div class="box-header with-border">
          @include('partials.filter', ['resetUrl' => '/departments'])
          <div class="box-tools">
            <a href="/departments/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Department</a>
          </div>
        </div>
        <div class="box-body table-responsive no-padding">
            @if(count($departments))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>SN</th>
                        <th>Name</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($departments as $key => $department)
                        <tr>
                            <td>{{ $page_start + $key + 1 }}</td>
                            <td>{{ $department->name }}</td>
                            <td>
                                <a href="/departments/{{ $department->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/departments/delete/{{ $department->id }}" class="btn btn-danger btn-xs confirm"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
            @else
            <div class="alert alert-info">
                There are no departments added. <a href="/departments/create">Add Departments</a>
            </div>
            @endif
        </div>
        <div class="box-footer clearfix">
            {!! $departments->render() !!}
        </div>
    </div>
</section>
@stop