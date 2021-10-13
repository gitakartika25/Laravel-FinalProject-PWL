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

Route::get('/logout',function(){
    $logout=Auth::logout();
    return view('auth.login');
});

Route::get('/',function(){
    return view('auth.login');
});

Auth::routes();

// HALAMAN ADMIN

Route::group(['middleware' => ['auth']], function () {  
    Route::get('/home', 'TransactionController@index')->name('index');
    Route::resource('/products','RestoController');
    Route::get('/transcation', 'TransactionController@index');
    Route::post('/transcation/addproduct/{id}', 'TransactionController@addProductCart');
    Route::post('/transcation/removeproduct/{id}', 'TransactionController@removeProductCart');
    Route::post('/transcation/clear', 'TransactionController@clear');
    Route::post('/transcation/increasecart/{id}', 'TransactionController@increasecart');
    Route::post('/transcation/decreasecart/{id}', 'transactionController@decreasecart');
    Route::post('/transcation/bayar','ReservasiController@bayar');
    Route::get('/transcation/history','TransactionController@history');
    Route::get('/transcation/laporan/{id}','TransactionController@laporan');

Route::get('/manageusers', 'UserController@usersView')->name('manageusers');
Route::get('/users/register', 'UserController@register');
Route::post('/users/createUser', 'UserController@create');
Route::get('/users/editUser/{id}', 'UserController@edit');
Route::post('/users/updateUser/{id}', 'UserController@update');
Route::get('/users/dropUser/{id}', 'UserController@drop');
Route::get('/users/cetak_pdf', 'UserController@cetak_pdf');
});


// HALAMAN CUSTOMER

//HOME
Route::get('/homeresto', 'HomeRestoController@index')->name('homeresto');
Route::get('/homeresto', 'HomeRestoController@comment')->name('homeresto');
Route::get('/homeresto/search','HomeRestoController@search');

//MENU
Route::get('/menu','MenuController@index')->name('menu');
Route::get('/menu/search','MenuController@search');

//MENU SESUAI ID
Route::get('/mainmenu/{id}','ArticleRestoController@article')->name('postresto');
Route::resource('postresto','KomentarController');
//Route::get('/mainmenu/{id}','ArticleRestoController@index')->name('postresto');
//Route::get('/mainmenu/{id}','ArticleRestoController@index')->name('menu');

//ABOUT
//Route::get('/aboutresto','AboutRestoController@about')->name('aboutresto');
//Route::post('/aboutresto','AboutRestoController@createcomment')->name('createcomment');
Route::get('/aboutresto/search','AboutRestoController@search');
Route::resource('aboutresto','KomentarController');

//RESERVASI
Route::get('/reservasi','ReservasiController@index')->name('reservasi');



Gate::define('admin-display', function($user){
    return $user->roles == "Administrator";
});
Gate::define('user-display', function($user){
    return $user->roles == "User";
});
