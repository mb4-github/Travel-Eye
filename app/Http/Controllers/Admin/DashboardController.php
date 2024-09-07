<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Booking;
use App\Models\User;
use App\Models\TravelPackage;
use App\Models\TravelInspiration;

class DashboardController extends Controller
{
    public function index()
    {

        $totalBooking= BooKing::count();
        // dd($totalBooking);

        $totaladmin = User::where('is_admin',1)->count();
        $totalravelInspiration= TravelInspiration::count();


        $data['totalBooking'] = $totalBooking;
        $data['totaladmin'] = $totaladmin;
        $data['totalravelInspiration'] = $totalravelInspiration;
        return view('admin.dashboard',$data);
    }
}
