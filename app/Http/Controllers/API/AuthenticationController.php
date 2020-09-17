<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\UserDetail;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth as TymonJWTAuth;

class AuthenticationController extends Controller
{
    public function login(Request $request)
    {
        $v = Validator::make($request->all(),[
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if($v->fails()){
            $response = [
                'message' => $v->errors()->first(),
                'status' => 422,
            ];
            return response()->json($response,422);
        }

            if(Auth::attempt(['email' => $request->input('email'), 'password' => $request->input('password') ])){

                if(Auth::user()->status == '0'){
                    return response()->json(['message' => 'User inactive by Admin. Please contact admin or try again later.','status' => 400],400);
                }

                $user = Auth::user();
                $user->user_token =  TymonJWTAuth::fromUser($user);

                if($user->save()){
                    $response = [
                    'message' => 'Login Successfully',
                    'body' => $user,
                    'status' => 200,
                ];

                    return response()->json($response,200);

                }else{
                    $response = [
                        'message' => 'Something Went Wrong',
                        'status' => 400,
                    ];
                    return response()->json($response,400);
                }

            }
            else{
                $response['message'] = 'Incorrect email or password.';
                $response['status'] = 400;
                return response()->json($response, 400);
            }

    }

    public function register(Request $request)
    {
        if($request->file('image')){
            $file = $request->file('image');
            $filename = time().'_'.$file;
            $path = public_path('images');
            $file->move($path,$filename );
            $request->merge(['profile_image' => $filename]);
        }

        $data = new User($request->all());
        if($data->save()){
            $request->merge(['user_id' => $data->id]);
            $details = new UserDetail($request->all());
            $details->save();

            $data->user_token = TymonJWTAuth::fromUser($data);
            $data->save();

            $response = [
                    'message' => 'Sign up Successfully',
                    'body' => User::find($data->id),
                    'status' => 200,
                ];
                return response()->json($response,200);
        }
        else{
            $response = [
                'message' => 'Something went wrong ',
                'status' => 400,
            ];
            return response()->json($response,400);
        }


    }


    public function updateProfile(Request $request)
    {
        if($request->file('image')){
            $file = $request->file('image');
            $filename = time().'_'.$file;
            $path = public_path('images');
            $file->move($path,$filename );
            $request->merge(['profile_image' => $filename]);
        }

        $details = [
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'profile_image' => $request->input('profile_image'),
            'contact' => $request->input('contact'),
        ];


        $data = User::find(Auth::id())->update($details);
        if($data){
            $details1 = [
                'father_name'  => $request->input('father_name'),
                'mother_name'  => $request->input('mother_name'),
                'wife'  => $request->input('wife'),
                'child'  => $request->input('child'),
                'address'  => $request->input('address'),
                'country'  => $request->input('country'),
                'city'  => $request->input('city'),
                'state'  => $request->input('state'),
                'zipcode'  => $request->input('zipcode'),
            ];

            $data1 = UserDetail::where('user_id',Auth::id())->update($details1);

            $response = [
                    'message' => 'Profile updated',
                    'status' => 200,
                ];
                return response()->json($response,200);
        }
        else{
            $response = [
                'message' => 'Something went wrong ',
                'status' => 400,
            ];
            return response()->json($response,400);
        }


    }




}
