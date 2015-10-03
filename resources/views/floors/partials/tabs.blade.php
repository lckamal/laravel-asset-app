<div class="clearfix">
    <div class="pull-left">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" {!! $active == 'map' ? 'class="active"' : '' !!}>
                <a href="/floors/{{ Request::segment('2') }}?view=map"><i class="fa fa-map-signs"></i> Floor map</a>
            </li>
            <li role="presentation" {!! $active == 'list' ? 'class="active"' : '' !!}>
                <a href="/floors/{{ Request::segment('2') }}?view=list"><i class="fa fa-list"></i> List</a>
            </li>
        </ul>
    </div>
    <div class="pull-right">
        <a href="/assets/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Asset</a>
    </div>
</div>