<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FullCalenderController;
use App\Http\Controllers\NotificationController;
/*
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



Route::get('/', function(){
    return redirect('/admin/login');
    
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();




Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::get('fullcalender', [FullCalenderController::class, 'index']);
Route::post('fullcalenderAjax', [FullCalenderController::class, 'ajax']);
Route::get('/notification', [NotificationController::class, 'index']);
Route::get('/notification/{id}', [NotificationController::class, 'getSigleNotification']);

Route::get('/createmeeting', [NotificationController::class, 'createmeeting']);
Route::get('/doctors', [NotificationController::class, 'getListdoctors']);
Route::get('/pdfData', [NotificationController::class, 'pdfData']);
Route::get('/pdf_list/{role_id}', [NotificationController::class, 'printData']);
