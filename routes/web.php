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


//Route::get('/blog/{id}', function ($id) {
//    return 'This is blog '.$id;
////    return view('blog/index');
//});
Auth::routes();
Route::group(['middleware' => 'auth'], function () {
    Route::get('/blog',[\App\Http\Controllers\BlogController::class, 'index'])->name('blog');
    Route::get('/blog/create/',[\App\Http\Controllers\BlogController::class, 'create'])->name('blog.create');
    Route::get('/blog/edit/{id}', [\App\Http\Controllers\BlogController::class, 'edit'])->name('blog.edit');
    Route::get('/blog/delete/{id}', [\App\Http\Controllers\BlogController::class, 'delete'])->name('blog.delete');
    Route::post('/blog/store/', [\App\Http\Controllers\BlogController::class, 'store'])->name('blog.store');
});

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
