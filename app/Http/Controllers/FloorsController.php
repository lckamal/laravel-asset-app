<?php

namespace App\Http\Controllers;

use App\Floor;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;

class FloorsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $floors = Floor::filter()->paginate(30);
        return View('floors.index', compact('floors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $formTitle = 'Create Floor';
        return View('floors.form', compact('formTitle'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:255',
            'department_id' => 'required'
        ]);

        (new Floor($request->all()))->save();

        flash()->success('Success!', 'Floor created successfully');

        return redirect('/floors');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $floor = Floor::findOrFail($id);
        $formTitle = 'Edit floor';
        return View('floors.form', compact('floor', 'formTitle'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required|max:255',
            'department_id' => 'required'
        ]);

        $floor = Floor::findOrFail($id);
        $floor->update($request->all());
        
        flash()->success('Success!', 'Floor updated successfully!');
        return redirect('floors');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
