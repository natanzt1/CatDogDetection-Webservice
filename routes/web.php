<?php

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


Route::prefix('api')->group(function () {
	Route::prefix('barang')->group(function () {
	    Route::get('', 'BarangController@index');
	    Route::post('', 'BarangController@store');
	    
	    Route::get('/image/{url}', 'BarangController@jaket_image');
	    Route::get('{id}', 'BarangController@show');
	    Route::get('create', 'BarangController@create');
	    Route::get('{id}/edit', 'BarangController@edit');
	    Route::post('{id}/update', 'BarangController@update');
	    Route::post('{id}/delete', 'BarangController@delete');
	});	
});

Route::get('transaksi', 'BarangController@python2');
Route::get('tes/{url}', 'BarangController@detection_image');
Route::GET('detection_result/{url}', 'BarangController@detection_image');
Route::get('tes', function(){
	return "helo2";
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
