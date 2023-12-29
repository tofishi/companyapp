<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });


Route::group(['middleware' => 'auth.redirect'], function () {

Route::get('/signup', [App\Http\Controllers\Auth\AuthController::class, 'signup'])->name('signup');
Route::post('/register', [App\Http\Controllers\Auth\AuthController::class, 'register'])->name('register');


Route::get('/otp', [App\Http\Controllers\Auth\AuthController::class, 'otp'])->name('otp');
Route::post('/verify-otp', [App\Http\Controllers\Auth\AuthController::class, 'verifyOtp'])->name('verify-otp');


Route::get('/', [App\Http\Controllers\Auth\AuthController::class, 'login'])->name('login');
Route::post('/login-submit', [App\Http\Controllers\Auth\AuthController::class, 'login_submit'])->name('login-submit');

});

Route::get('/dashboard', [App\Http\Controllers\DashboardController::class, 'index'])->name('dashboard');

/*================ Start Manage User Routes ================*/
Route::group(['prefix' => 'user'], function () {

    Route::get('/list', [App\Http\Controllers\UsersController::class, 'index']);
    Route::get('/add', [App\Http\Controllers\UsersController::class, 'add_user']);
    Route::get('/edit/{id}', [App\Http\Controllers\UsersController::class, 'add_user']);
    Route::post('/submit_user', [App\Http\Controllers\UsersController::class, 'submit_user']);
});
/*================ End Manage User Routes ================*/

Route::get('/logout', [App\Http\Controllers\Auth\AuthController::class, 'logout'])->name('logout');


// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




/************************************************ */

//Clear Cache facade value:
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});

//Reoptimized class loader:
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});


//Clear Route cache:
Route::get('/route-clear', function() {
    $exitCode = Artisan::call('route:clear');
    return '<h1>Route cache cleared</h1>';
});

//Clear View cache:
Route::get('/view-clear', function() {
    $exitCode = Artisan::call('view:clear');
    return '<h1>View cache cleared</h1>';
});

//Clear Config cache:
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Clear Config cleared</h1>';
});