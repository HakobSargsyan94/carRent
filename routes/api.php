<?php

use App\Http\Controllers\api\RentCarController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth_api')->match(['get', 'post'],'/user/{id}', function (Request $request, $id) {
    $user = \App\Models\User::find($id);
    if (!$user) return response('xx', 404);
    return $user;
});


Route::middleware('auth_api')->match(['get', 'post'],'/rentCar/{carId}/{userId}', [RentCarController::class, 'rentCar']);
