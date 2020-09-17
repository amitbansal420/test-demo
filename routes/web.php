<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Authentication Routes...

Route::get('login', 'Auth\LoginController@showLoginForm')->middleware('CheckSession')->name('login');
Route::get('register', 'Auth\RegisterController@showRegistrationForm')->middleware('CheckSession')->name('register');

Route::get('/setsession','HomeController@setsession')->name('setsession');

Route::group(['middleware' => 'assignAuth'], function () {

    Route::get('/home', 'HomeController@index')->name('home');
    Route::get('/logout', 'HomeController@logout')->name('logout');
    Route::get('/profile', 'HomeController@profile')->name('profile');

});


