<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PagesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index']]);
        parent::__construct();
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        if (Auth::check()) {
            return redirect('home');
        }
        return View('pages.home');
    }

    public function home()
    {
        $stats['employees'] = \App\Employee::count();
        $stats['assets'] = \App\Asset::count();
        $stats['users'] = \App\User::count();
        $stats['categories'] = \App\Category::count();
        $stats['vendors'] = \App\Vendor::count();
        $stats['departments'] = \App\Department::count();
        $stats['buildings'] = \App\Building::count();
        $stats['buildings_data'] = \App\Building::all();

        return View('pages.dashboard', compact('stats'));
    }
}
