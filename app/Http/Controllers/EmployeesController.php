<?php

namespace App\Http\Controllers;

use App\Employee;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\EmployeeRequest;

class EmployeesController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('permission:manage_employees');
        parent::__construct();
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $employees = Employee::all();
        return View('employees.index', compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $formTitle = 'Create employee';
        return View('employees.form', compact('formTitle'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(EmployeeRequest $request)
    {
        $this->validate($request, [
            'employee_name' => 'required|unique:employees|max:255'
        ]);

        $dept = new Employee;
        $dept->employee_name = $request->employee_name;
        $dept->save();

        flash()->success('Success!', 'Employee created successfully');

        return redirect('/employees');
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
        $employee = Employee::find($id);
        $formTitle = 'Edit employee';
        return View('employees.form', compact('employee', 'formTitle'));
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
            'employee_name' => 'required|unique:employees,id,'.$id.'|max:255'
        ]);

        $employee = Employee::findOrFail($id);
        $employee->update($request->all());
        
        flash()->success('Success!', 'Departmanet name updated!');
        return redirect('employees');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        Employee::destroy($id);
        flash()->success('Success!', 'Employee has been deleted!');
        return redirect('employees');
    }
}
