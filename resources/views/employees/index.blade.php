@extends('layout')

@section('content')
<section class="content-header">
  <h1>Employees</h1>
  {!! Breadcrumbs::render('employees.index') !!}
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
            @include('partials.filter', ['resetUrl' => '/employees'])
          <div class="box-tools">
            <a href="/employees/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Employee</a>
          </div>
        </div>
        <div class="box-body table-responsive no-padding">
            @if(count($employees))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>SN</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Number</th>
                        <th>SSN</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($employees as $key => $employee)
                        <tr>
                            <td>{{ $page_start + $key + 1 }}</td>
                            <td>{{ $employee->first_name . ' ' . $employee->last_name }}</td>
                            <td>{{ $employee->email }}</td>
                            <td>{{ $employee->mobile }}</td>
                            <td>{{ $employee->ssn }}</td>
                            <td>
                                <a href="/employees/{{ $employee->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/employees/delete/{{ $employee->id }}" class="btn btn-danger btn-xs confirm"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
            @else
                <div class="alert alert-info">
                    There are no employees added. <a href="/employees/create">Add Employee</a>
                </div>
            @endif
        </div>
        <div class="box-footer clearfix">
            {!! $employees->render() !!}
        </div>
    </div>
</section>
@stop