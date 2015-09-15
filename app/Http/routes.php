<?php

Route::get('/', 'PagesController@home');
Route::get('/home', 'PagesController@home');

Route::resource('users', 'UsersController');
Route::get('users/delete/{id}', 'UsersController@destroy');

Route::resource('roles', 'RolesController');
Route::get('roles/delete/{id}', 'RolesController@destroy');

Route::resource('permissions', 'PermissionsController');
Route::get('permissions/delete/{id}', 'PermissionsController@destroy');

Route::resource('departments', 'DepartmentsController');
Route::get('departments/delete/{id}', 'DepartmentsController@destroy');

Route::resource('assets', 'AssetsController');
Route::get('assets/delete/{id}', 'AssetsController@destroy');

// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

// Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');

// Route::get('users', ['middleware' => 'acl:manage_users', function()
// {
//     return redirect('/home');
// }]);