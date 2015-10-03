<?php

namespace App\Http\Controllers;

use App\Asset;
use App\Http\Requests;
use Illuminate\Http\Request;
use App\Http\Requests\AssetRequest;
use App\Http\Controllers\Controller;

class AssetsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('permission:manage_assets');
        parent::__construct();
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $assets = Asset::filter()->paginate(30);
        $assets->appends(array_filter(\Request::all()));

        $view = \Request::get('view', 'list');
        $loadview = $view == 'grid' ? 'assets.grid' : 'assets.index';
        return View($loadview, compact('assets','view'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $formTitle = 'Create asset';
        return View('assets.form', compact('formTitle'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(AssetRequest $request)
    {
        $asset = new Asset($request->all());
        $asset->save()->saveImage();
        
        flash()->success('Success!', 'Asset has been created!');
        return redirect('assets');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        $asset = Asset::findOrFail($id);

        return View('assets.show', compact('asset'));
    }

    /**
     * update position of asset on floor map
     * @param  Request $request
     * @return status
     */
    public function update_position(Request $request)
    {
        $asset = Asset::findOrFail($request->get('id'));
        if(!$asset){
            return 0;
        }

        $asset->position_top = $request->get('position_top');
        $asset->position_left = $request->get('position_left');
        $asset->save();
        return 1;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $asset = Asset::find($id);
        $formTitle = 'Edit asset';
        return View('assets.form', compact('asset', 'formTitle'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  AssetRequest  $request
     * @param  int  $id
     * @return Response
     */
    public function update(AssetRequest $request, $id)
    {
        $asset = Asset::findOrFail($id);
        $asset->update($request->all());
        $asset->saveImage($request);
        
        flash()->success('Success!', 'Asset updated successfully!');
        return redirect('assets');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        Asset::destroy($id);
        flash()->success('Success!', 'Asset has been deleted!');
        return redirect('assets');
    }

    /**
     * response dropdown of given department
     * @return response
     */
    public function dropdown()
    {
        $building_id = \Request::get('building_id');
        return \App\Floor::where('building_id', $building_id)->lists('name','id');
    }
}
