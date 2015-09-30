<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Building;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class BuildingsController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('permission:manage_buildings');
        parent::__construct();
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $buildings = Building::filter()->paginate(30);
        $view = \Request::get('view', 'list');
        $loadview = $view == 'map' ? 'buildings.map' : 'buildings.index';
        return View($loadview, compact('buildings'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $formTitle = 'Create building';
        return View('buildings.form', compact('formTitle'));
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
            'name' => 'required|unique:buildings|max:255',
            'latitude' => 'regex:/^[+-]?\d+\.\d+, ?[+-]?\d+\.\d+$/',
            'longitude' => 'regex:/^[+-]?\d+\.\d+, ?[+-]?\d+\.\d+$/',
        ]);

        (new Building($request->all()))->save();

        flash()->success('Success!', 'Building created successfully');

        return redirect('/buildings');
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
        $building = Building::find($id);
        $formTitle = 'Edit building';
        return View('buildings.form', compact('building', 'formTitle'));
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
            'name' => 'required|unique:buildings,id,'.$id.'|max:255',
            'latitude' => 'regex:/-?\d{1,3}\.{1}\d{1,6}/',
            'longitude' => 'regex:/-?\d{1,3}\.{1}\d{1,6}/',
            
            // 'latitude' => "regex:/^-?([1-8]?[1-9]|[1-9]0)\.{1}\d{1,6}$/",
            // 'longitude' => "regex:/^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}$/",
        ]);

        $building = Building::findOrFail($id);
        $building->update($request->all());
        
        flash()->success('Success!', 'Building updated successfully!');
        return redirect('buildings');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        Building::destroy($id);
        flash()->success('Success!', 'Building has been deleted!');
        return redirect('buildings');
    }
}
