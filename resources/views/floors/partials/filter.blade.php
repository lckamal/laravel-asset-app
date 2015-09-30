@inject('buildings', 'App\Building')
<div class="box-search">
    <form action="" method="get" class="form-inline" role="form">
        <div class="form-group">
            {!! Form::text('q', Request::get('q'), ['class' => 'form-control', 'placeholder' => 'Search here..']) !!}
        </div>         
        <div class="form-group">
            {!! Form::select('building_id', array('' => 'Building') + (array)$buildings->lists('name', 'id')->all(), Request::get('building_id'), ['class' => 'form-control chosen-input']) !!}
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
        <a href="{!! isset($resetUrl) ? $resetUrl : '/' !!}" class="btn btn-default">Reset</a>
      </form>
</div>