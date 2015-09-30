<?php

Route::get('/', ['as' => '/', 'uses' => 'PagesController@index']);
Route::get('home', ['as' => 'home', 'uses' => 'PagesController@home']);

// Route::get('/map', ['as' => 'map', 'uses' => 'LocationsController@map']);

Route::resource('users', 'UsersController');
Route::get('users/delete/{id}', 'UsersController@destroy');

Route::resource('roles', 'RolesController');
Route::get('roles/delete/{id}', 'RolesController@destroy');

Route::resource('permissions', 'PermissionsController');
Route::get('permissions/delete/{id}', 'PermissionsController@destroy');

Route::resource('departments', 'DepartmentsController');
Route::get('departments/delete/{id}', 'DepartmentsController@destroy');

Route::resource('buildings', 'BuildingsController');
Route::get('buildings/delete/{id}', 'BuildingsController@destroy');

Route::resource('floors', 'FloorsController');
Route::get('floors/delete/{id}', 'FloorsController@destroy');

Route::resource('assets/dropdown', 'AssetsController@dropdown');
Route::resource('assets', 'AssetsController');
Route::get('assets/delete/{id}', 'AssetsController@destroy');

Route::resource('employees', 'EmployeesController');
Route::get('employees/delete/{id}', 'EmployeesController@destroy');

Route::resource('categories', 'CategoriesController');
Route::get('categories/delete/{id}', 'CategoriesController@destroy');

Route::resource('vendors', 'VendorsController');
Route::get('vendors/delete/{id}', 'VendorsController@destroy');

// Authentication routes...
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

// Registration routes...
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');

// Password reset link request routes...
Route::get('password/email', 'Auth\PasswordController@getEmail');
Route::post('password/email', 'Auth\PasswordController@postEmail');

// Password reset routes...
Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
Route::post('password/reset', 'Auth\PasswordController@postReset');