<?php

// Home
Breadcrumbs::register('home', function($breadcrumbs)
{
    $breadcrumbs->push('Home', route('home'));
});

// Home > Users
Breadcrumbs::register('users.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Users', route('users.index'));
});

// Home > Users > Create
Breadcrumbs::register('users.create', function($breadcrumbs)
{
    $breadcrumbs->parent('users.index');
    $breadcrumbs->push('Create User', route('users.create'));
});

// Home > Users > Edit
Breadcrumbs::register('users.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('users.index');
    $breadcrumbs->push('Edit User', route('users.edit'));
});

// Home > Roles
Breadcrumbs::register('roles.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Roles', route('roles.index'));
});

// Home > Roles > Create
Breadcrumbs::register('roles.create', function($breadcrumbs)
{
    $breadcrumbs->parent('roles.index');
    $breadcrumbs->push('Create Role', route('roles.create'));
});

// Home > Roles > Edit
Breadcrumbs::register('roles.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('roles.index');
    $breadcrumbs->push('Edit Role', route('roles.edit'));
});

// Home > Permissions
Breadcrumbs::register('permissions.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Permissions', route('permissions.index'));
});

// Home > Permissions > Create
Breadcrumbs::register('permissions.create', function($breadcrumbs)
{
    $breadcrumbs->parent('permissions.index');
    $breadcrumbs->push('Create Permission', route('permissions.create'));
});

// Home > Permissions > Edit
Breadcrumbs::register('permissions.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('permissions.index');
    $breadcrumbs->push('Edit Permission', route('permissions.edit'));
});

// Home > Departments
Breadcrumbs::register('departments.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Departments', route('departments.index'));
});

// Home > Departments > Create
Breadcrumbs::register('departments.create', function($breadcrumbs)
{
    $breadcrumbs->parent('departments.index');
    $breadcrumbs->push('Create Department', route('departments.create'));
});

// Home > Departments > Edit
Breadcrumbs::register('departments.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('departments.index');
    $breadcrumbs->push('Edit Department', route('departments.edit'));
});

// Home > Buildings
Breadcrumbs::register('buildings.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Buildings', route('buildings.index'));
});

// Home > Buildings > Create
Breadcrumbs::register('buildings.create', function($breadcrumbs)
{
    $breadcrumbs->parent('buildings.index');
    $breadcrumbs->push('Create Building', route('buildings.create'));
});

// Home > Buildings > Edit
Breadcrumbs::register('buildings.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('buildings.index');
    $breadcrumbs->push('Edit Building', route('buildings.edit'));
});

// Home > Floors
Breadcrumbs::register('floors.index', function($breadcrumbs)
{
    if($building_id = Request::get('building_id')){
        $building = \App\Building::find($building_id);
        
        $breadcrumbs->parent('buildings.index');
        $breadcrumbs->push($building->name, url('floors?building_id='.$building->id));
    }
    else{
        $breadcrumbs->parent('home');
        $breadcrumbs->push('Floors', route('floors.index'));
    }
});

// Home > Floors > Create
Breadcrumbs::register('floors.create', function($breadcrumbs)
{
    $breadcrumbs->parent('floors.index');
    $breadcrumbs->push('Create Floor', route('floors.create'));
});

// Home > Floors > Edit
Breadcrumbs::register('floors.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('floors.index');
    $breadcrumbs->push('Edit Floor', route('floors.edit'));
});

// Home > Department > Floor > Detail
Breadcrumbs::register('floors.show', function($breadcrumbs)
{
    $floor = \App\Floor::find(Request::segment(2));

    $breadcrumbs->parent('buildings.index');
    $breadcrumbs->push($floor->building->name, url('floors?building_id='.$floor->building->id));
    $breadcrumbs->push($floor->name);
});

// Home > Employees
Breadcrumbs::register('employees.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Employees', route('employees.index'));
});

// Home > Employees > Create
Breadcrumbs::register('employees.create', function($breadcrumbs)
{
    $breadcrumbs->parent('employees.index');
    $breadcrumbs->push('Create Employee', route('employees.create'));
});

// Home > Employees > Edit
Breadcrumbs::register('employees.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('employees.index');
    $breadcrumbs->push('Edit Employee', route('employees.edit'));
});

// Home > Assets
Breadcrumbs::register('assets.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Assets', route('assets.index'));
});

// Home > Assets > Create
Breadcrumbs::register('assets.create', function($breadcrumbs)
{
    $breadcrumbs->parent('assets.index');
    $breadcrumbs->push('Create Asset', route('assets.create'));
});

// Home > Assets > Edit
Breadcrumbs::register('assets.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('assets.index');
    $breadcrumbs->push('Edit Asset', route('assets.edit'));
});

// Home > Assets > map
Breadcrumbs::register('assets.show', function($breadcrumbs)
{
    $asset = \App\Asset::find(Request::segment(2));

    $breadcrumbs->parent('buildings.index');
    $breadcrumbs->push($asset->building->name, url('floors?building_id='.$asset->building->id));
    $breadcrumbs->push($asset->floor->name, url('floors/'.$asset->floor->id));
    $breadcrumbs->push($asset->name);
});

// Home > Categories
Breadcrumbs::register('categories.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Categories', route('categories.index'));
});

// Home > Categories > Create
Breadcrumbs::register('categories.create', function($breadcrumbs)
{
    $breadcrumbs->parent('categories.index');
    $breadcrumbs->push('Create Category', route('categories.create'));
});

// Home > Categories > Edit
Breadcrumbs::register('categories.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('categories.index');
    $breadcrumbs->push('Edit Category', route('categories.edit'));
});

// Home > Vendors
Breadcrumbs::register('vendors.index', function($breadcrumbs)
{
    $breadcrumbs->parent('home');
    $breadcrumbs->push('Vendors', route('vendors.index'));
});

// Home > Vendors > Create
Breadcrumbs::register('vendors.create', function($breadcrumbs)
{
    $breadcrumbs->parent('vendors.index');
    $breadcrumbs->push('Create Vendor', route('vendors.create'));
});

// Home > Vendors > Edit
Breadcrumbs::register('vendors.edit', function($breadcrumbs)
{
    $breadcrumbs->parent('vendors.index');
    $breadcrumbs->push('Edit Vendor', route('vendors.edit'));
});