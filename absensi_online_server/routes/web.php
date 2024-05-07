<?php

use App\Http\Controllers\AttendanceHistoryController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserRequestHistoryController;
use App\Models\UserRequestHistory;
use Illuminate\Support\Facades\Route;

/*
Important:
https://securinglaravel.com/p/security-tip-laravel-11s-middleware

*/

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('api')->group(function () {
    Route::get('/users', [UserController::class, 'index']);
    Route::post('/auth/login', [AuthController::class, 'login']);
    Route::post('/auth/logout', [AuthController::class, 'logout']);

    Route::get('/users', [UserController::class, 'index']);
    Route::post('/users', [UserController::class, 'store']);
    Route::get('/users/{id}', [UserController::class, 'show']);
    Route::put('/users/{id}', [UserController::class, 'update']);
    Route::delete('/users/{id}', [UserController::class, 'destroy']);

    Route::get('/companies', [CompanyController::class, 'index']);
    Route::post('/companies', [CompanyController::class, 'store']);
    Route::get('/companies/{id}', [CompanyController::class, 'show']);
    Route::put('/companies/{id}', [CompanyController::class, 'update']);
    Route::delete('/companies/{id}', [CompanyController::class, 'destroy']);

    Route::get('/user-request-histories', [UserRequestHistoryController::class, 'index']);
    Route::post('/user-request-histories', [UserRequestHistoryController::class, 'store']);
    Route::get('/user-request-histories/{id}', [UserRequestHistoryController::class, 'show']);
    Route::put('/user-request-histories/{id}', [UserRequestHistoryController::class, 'update']);
    Route::delete('/user-request-histories/{id}', [UserRequestHistoryController::class, 'destroy']);

    Route::get('/attendance-histories', [AttendanceHistoryController::class, 'index']);
    Route::post('/attendance-histories/check-in', [AttendanceHistoryController::class, 'checkIn']);
    Route::post('/attendance-histories/check-out', [AttendanceHistoryController::class, 'checkOut']);
    Route::post('/attendance-histories/check-in-and-out-status-today', [AttendanceHistoryController::class, 'checkInAndCheckoutStatusToday']);
    Route::post('/attendance-histories/reset-attendance-today', [AttendanceHistoryController::class, 'resetAttendanceToday']);
});
