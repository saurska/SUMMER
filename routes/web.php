<?php
use App\Http\Controllers\ClaimController;
use App\Http\Controllers\TestsController;
use App\Http\Middleware\EcAuthCheck;
use App\Http\Controllers\AmazonController;
use Botble\Ecommerce\Http\Controllers\Customers\LoginController;
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

Route::get('claim',[ClaimController::class,'ShowClaimPage'])->middleware('EcAuthCheck');
// Route::get('/customer/claim',[ClaimController::class,'ShowClaimDetails'])->name('customer.claim')->middleware('EcAuthCheck');;
Route::post('claim',[ClaimController::class,'save']);
Route::get('getdata',[TestsController::class,'GetData']);
Route::post('Amazon',[AmazonController::class,'saved']);

