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

Route::get('/','HomeController@getHome');
Route::get('{cate_slug}&{cate_id}', 'HomeController@getProductByCate');
Route::get('{cate_slug}/{prod_name}&{prod_id}.html', 'HomeController@getDetailProduct');
Route::get('about.html', 'HomeController@getAboutUs');
Route::get('signout.html','HomeController@getSignout');
Route::get('forgotpassword.html', 'HomeController@getForgotPassword');
Route::post('forgotpassword.html', 'HomeController@postForgotPassword');
Route::get('complete','HomeController@getComplete');
Route::post('addemail','HomeController@postAddEmail');
Route::post('comment','HomeController@postAddComment');
Route::get('trend.html','HomeController@getListTrend');
Route::get('trend/{trend_slug}/{trend_id}.html','HomeController@getDetailTrend');
Route::get('search','HomeController@getSearch');

Route::group(['prefix'=>'user','middleware'=>'CheckLoggedOut'], function(){
	Route::get('/','UserController@getInfoUser');
	Route::post('/','UserController@postInfoUser');
	Route::post('changepassword','UserController@postChangePassword');
});

Route::group(['prefix'=>'cart'], function(){
	Route::get('/', 'CartController@getShowCart');
	Route::get('add/{id}','CartController@getAddCart');
	Route::post('add','CartController@postAddCart');
	Route::get('delete/{rowId}', 'CartController@getDeleteCart');
	Route::get('destroy','CartController@getDestroyCart');
	Route::post('update','CartController@postUpdateCart');
	Route::get('checkout', 'CartController@getCheckOut');
	Route::post('checkout', 'CartController@postCheckOut');
});

Route::group(['prefix'=>'signin.html', 'middleware'=>'CheckLoggedIn'], function(){
	Route::get('/', 'HomeController@getSignin');
	Route::post('/', 'HomeController@postSignin');
});
Route::group(['prefix'=>'signup.html'], function(){
	Route::get('/','HomeController@getSignup');
	Route::post('/','HomeController@postSignup');
});


Route::group(['namespace'=>'Admin'], function(){
	Route::group(['prefix'=>'admin','middleware'=>'CheckLoggedOut'], function(){
		Route::get('/','HomeController@getHome');

		Route::group(['prefix'=>'product'], function(){
			Route::get('add','ProductController@getAddProduct');
			Route::get('/','ProductController@getProduct');
			Route::get('delete/{id}','ProductController@getDeleteProduct');
			Route::get('edit/{id}','ProductController@getEditProduct');
			
			Route::post('add','ProductController@postAddProduct');
			Route::post('edit/{id}','ProductController@postEditProduct');

		});

		Route::group(['prefix'=>'cate'], function(){
			Route::get('/', 'CategoryController@getCate');
			Route::get('add', 'CategoryController@getAddCate');
			Route::get('delete/{id}', 'CategoryController@getDeleteCate');
			Route::get('edit/{id}', 'CategoryController@getEditCate');
			Route::post('add', 'CategoryController@postAddCate');
			Route::post('edit/{id}', 'CategoryController@postEditCate');
		});

		Route::group(['prefix'=>'banner'], function(){
			Route::get('/', 'BannerController@getListBanner');
			Route::get('add', 'BannerController@getAddBanner');
			Route::post('add', 'BannerController@postAddBanner');
			Route::get('delete/{id}', 'BannerController@getDeleteBanner');
			Route::get('edit/{id}', 'BannerController@getEditBanner');
			Route::post('edit/{id}', 'BannerController@postEditBanner');
		});

		Route::group(['prefix'=>'order'], function(){
			Route::get('/','OrderController@getListOrder');
			Route::get('delete/{id}','OrderController@getDeleteOrder');
			Route::get('edit/{id}','OrderController@getEditOrder');
			Route::post('edit','OrderController@postEditOrder');
		});

		Route::group(['prefix'=>'trend'], function(){
			Route::get('/','TrendController@getListTrend');
			Route::get('add','TrendController@getAddTrend');
			Route::post('add','TrendController@postAddTrend');
			Route::get('delete/{id}','TrendController@getDeleteTrend');
			Route::get('edit/{id}','TrendController@getEditTrend');
			Route::post('edit/{id}','TrendController@postEditTrend');
		});

		Route::group(['prefix'=>'user'], function(){
			Route::get('/', 'UserController@getListUser');
			Route::get('/delete/{user_id}', 'UserController@getDeleteUser');
		});

		Route::group(['prefix'=>'orderdetail'], function(){

		});
	});
});