<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\user\LoginUserController;
use App\Http\Controllers\user\RegisterUserController;

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

Route::get('/', function () {
    return view('pages.home');
})->name('home');

Route::get('truyen', function () {
    return view('pages.bookstory');
})->name('bookstory');

Route::get('chapter', function () {
    return view('pages.chapter');
})->name('chapter');

Route::get('dang-nhap', [LoginUserController::class, 'home'])->name('login');
Route::get('dang-ky', [RegisterUserController::class, 'home'])->name('register');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
