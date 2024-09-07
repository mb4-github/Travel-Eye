<?php

namespace App\Http\Controllers;
use App\Models\TravelInspiration;
use Illuminate\Http\Request;

class TravelInspirationController extends Controller
{
    // app/Http/Controllers/TravelInspirationController.php

    public function index()
    {
        // Fetch travel inspiration data from the database
        $inspirations = TravelInspiration::all();

        // Pass the data to the view
        return view('travel_inspiration', compact('inspirations'));
    }
}


