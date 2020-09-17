<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AssignAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $user_id = \Session::get('user_id');

        if($user_id){
            $user = User::find($user_id);
            $request['user'] = $user;

            return $next($request);

        }else{
            return redirect()->route('login');
        }
        return $next($request);
    }
}
