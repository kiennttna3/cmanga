<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\user\LoginUserController;
use App\Http\Controllers\user\RegisterUserController;

use App\Http\Controllers\index\HomeController;
use App\Http\Controllers\index\bookstoryController;

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

Route::get('chapter', function () {
    return view('pages.chapter');
})->name('chapter');

Route::get('profile', function () {
    return view('user.profile');
})->name('profile');

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('{slug}', [bookstoryController::class, 'index'])->name('bookstory');

Route::get('dang-nhap', [LoginUserController::class, 'home'])->name('login');
Route::get('dang-ky', [RegisterUserController::class, 'home'])->name('register');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
