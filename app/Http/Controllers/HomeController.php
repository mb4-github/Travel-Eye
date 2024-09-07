<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use App\Models\TravelPackage;
use App\Models\TravelInspiration;

class HomeController extends Controller
{
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $travel_packages = TravelPackage::with('galleries')->get();
        // dd($travel_packages);
        $blogs = Blog::get()->take(3);

        // Fetch travel inspiration data from the database
        $inspirations = TravelInspiration::all();

        // Pass the data to the view
        $data['inspirations']=$inspirations;
        $data['blogs']=$blogs;
        $data['travel_packages']=$travel_packages;

        return view('homepage', $data);
    }
}
