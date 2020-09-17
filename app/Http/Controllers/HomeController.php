<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function setsession(Request $request)
    {
        $session = $request->input('token');
        $user_id = $request->input('id');
        \Session::put('auth_token',$session);
        \Session::put('user_id',$user_id);
        // print_r(\Session::get('user_id'));
        // die;
        if(\Session::get('auth_token') && \Session::get('user_id') ){
            return '1';
        }
        return '0';
    }

    public function index(Request $request)
    {
        $data = $request['user'];
        return view('home',['data'=>$data]);
    }

    public function logout()
    {
        \Session::flush();
        return '1';
    }

    public function profile(Request $request)
    {
        $data = User::with('userdetails')->find($request['user']->id);


        return view('profile',['data' => $data]);
    }

}
