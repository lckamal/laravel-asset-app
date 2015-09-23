<div class="clearfix">
    <div class="pull-left">
        <ul class="nav nav-tabs" role="tablist">
            <li role="presentation" {!! $active == 'list' ? 'class="active"' : '' !!}>
                <a href="/assets?view=list"><i class="fa fa-list"></i> List View</a>
            </li>
            <li role="presentation" {!! $active == 'grid' ? 'class="active"' : '' !!}>
                <a href="/assets?view=grid"><i class="fa fa-th-large"></i> Grid View</a>
            </li>
        </ul>
    </div>
    <div class="pull-right">
        <a href="/assets/create" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Asset</a>
    </div>
</div>