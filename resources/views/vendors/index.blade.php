@extends('layout')

@section('content')
<section class="content-header">
  <h1>Vendors</h1>
  {!! Breadcrumbs::render('vendors.index') !!}
</section>
<section class="content">
    <div class="box">
        <div class="box-header with-border">
          @include('partials.filter', ['resetUrl' => '/vendors'])
          <div class="box-tools">
            <a href="/vendors/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Vendor</a>
          </div>
        </div>
        <div class="box-body table-responsive no-padding">
            @if(count($vendors))
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>SN</th>
                        <th>Name</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($vendors as $key => $vendor)
                        <tr>
                            <td>{{ $page_start + $key + 1 }}</td>
                            <td>{{ $vendor->name }}</td>
                            <td>
                                <a href="/vendors/{{ $vendor->id }}/edit" class="btn btn-warning btn-xs"><i class="fa fa-pencil"></i> Edit</a>
                                <a href="/vendors/delete/{{ $vendor->id }}" class="btn btn-danger btn-xs confirm"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table>
            @else
                <div class="alert alert-info">
                    There are no vendors added. <a href="/vendors/create">Add Vendor</a>
                </div>
            @endif
            
        </div>
        <div class="box-footer clearfix">
            {!! $vendors->render() !!}
        </div>
    </div>
</section>
@stop