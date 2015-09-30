<div class="clearfix">
    <div class="pull-left">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" {!! $active == 'list' ? 'class="active"' : '' !!}>
                <a href="/buildings?view=list"><i class="fa fa-list"></i> List View</a>
            </li>
            <li role="presentation" {!! $active == 'map' ? 'class="active"' : '' !!}>
                <a href="/buildings?view=map"><i class="fa fa-map-signs"></i> Map View</a>
            </li>
        </ul>
    </div>
    <div class="pull-right">
        <a href="/buildings/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Building</a>
    </div>
</div>