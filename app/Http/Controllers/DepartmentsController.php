<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Department;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class DepartmentsController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('permission:manage_departments');
        parent::__construct();
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $departments = Department::filter()->paginate(30);
        $page_start = \Request::get('page', 0);
        $view = \Request::get('view', 'list');
        $loadview = $view == 'map' ? 'departments.map' : 'departments.index';
        return View($loadview, compact('departments', 'page_start'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $formTitle = 'Create department';
        return View('departments.form', compact('formTitle'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:departments|max:255',
        ]);

        (new Department($request->all()))->save();

        flash()->success('Success!', 'Department created successfully');

        return redirect('/departments');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $department = Department::find($id);
        $formTitle = 'Edit department';
        return View('departments.form', compact('department', 'formTitle'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required|unique:departments,id,'.$id.'|max:255',
        ]);

        $department = Department::findOrFail($id);
        $department->update($request->all());
        
        flash()->success('Success!', 'Department updated successfully!');
        return redirect('departments');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        Department::destroy($id);
        flash()->success('Success!', 'Department has been deleted!');
        return redirect('departments');
    }
}
