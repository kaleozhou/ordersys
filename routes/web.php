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
    return view('order/test')->with('msg',0);
});
Route::get('/zhu', function () {
    return view('yangzhu/index');
});
Route::get('/baby', function () {
    return view('welcome');
});

Route::get('/order/{category_id?}', 'OrderController@index');
Route::get('/alipay/webnotify', 'OrderController@webNotify');
Route::get('/alipay/webreturn', 'OrderController@webReturn');
Route::post('/order/add', 'OrderController@add');
Route::post('/adduser', 'UserdataController@adduser');
Route::post('/adduserapi',['middleware'=>['App\Http\Middleware\AccessMiddleware'],'uses'=>'UserdataController@adduserapi']);

Auth::routes();

Route::get('/home', 'HomeController@index');

