<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('register', 'API\AuthenticationController@register');
Route::post('login', 'API\AuthenticationController@login');

Route::group([
        'namespace' => 'API',
        'middleware' => 'auth:api',
    ], function () {

        Route::post('updateProfile','AuthenticationController@updateProfile');

});
