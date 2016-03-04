<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route::get('/', 'WelcomeController@index');

Route::get('/', 'HomeController@index');

Route::get('pages/{id}', 'PagesController@show');

Route::post('comment/store', 'CommentsController@store');


// 不想让别人随便注册 => 注释下面代码，添加后3条
// Route::get('auth/login', 'Auth\AuthController@getLogin');
// Route::post('auth/login', 'Auth\AuthController@postLogin');
// Route::get('auth/Logout', 'Auth\AuthController@getLogout');
Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

/**
 * 'prefix' 	=> 'admin'  表示这个路由组的url前缀是/admin
 * 'namespace'	=> 'admin'  表示下面的'AdminHomeController@index'是在'\App\Http\Controllers\Admin\AdminHomeController@index'，加上了一个命名空间内前缀
 */
Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'auth'], function()
{
	Route::get('/', 'AdminHomeController@index');
	Route::resource('pages', 'PagesController');	//添加"资源控制器"
	Route::resource('comments', 'CommentsController');
});