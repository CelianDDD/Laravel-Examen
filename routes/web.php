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

/* Route des produits */

Route::get('/products', 'ProductController@index')->name('products.index');
Route::get('/products/{slug}', 'ProductController@show')->name('products.show');

/* Route du contact */

Route::get('/contact', function () {
    return view('contact');
});

/* Route du register et login */

Route::get('/register', function () {
    return view('register');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
