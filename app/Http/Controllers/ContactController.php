<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Mail\Contact;

class ContactController extends Controller
{
    public function index(){

        // $user = User::where('id',1)->get();
        // dd($user);
            return view('contact');

    }

    public function sendEmail(Request $request) {


//    dd($request);
        $validate = Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);
        // dd($validate);
        if ($validate->passes()) {

            //Send email here

            $mailData = [
                'name' => $request->name,
                'email' => $request->email,
                'subject' =>$request->subject,
                'message' => $request->message,
                'mail_subject' => 'You have recive a contact email..',
            ];

            // dd($mailData);
            $admin = User::
                    where('id',1)
                    ->first();
            // dd($admin->email);
            Mail::to($admin->email)->send(new Contact($mailData));

            return redirect()->back()->with([
                'message' => "Success, Thanks for contacting us, We Will get back to you soon..."
            ]);
        }else {
            return back()->withErrors($validate)->withInput();
        }

    }
}
