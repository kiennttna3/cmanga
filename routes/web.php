<?php

use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\index\HomeController;
use App\Http\Controllers\index\bookstoryController;
use App\Http\Controllers\index\chapterController;
use App\Http\Controllers\index\publisherController;
use App\Http\Controllers\index\categoryController;
use App\Http\Controllers\index\loginController;
use App\Http\Controllers\index\registerController;
use App\Http\Controllers\index\followController;

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

Route::middleware('web')->group(function () {
    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::get('/the-loai/{slug}', [categoryController::class, 'index'])->name('category');
    Route::get('/truyen-tranh/{slug}', [bookstoryController::class, 'index'])->name('bookstory');
    Route::get('/truyen-tranh/{slug_bookstory}/{slug}', [chapterController::class, 'index'])->name('chapter');
    Route::get('/trang-ca-nhan', [publisherController::class, 'index'])->name('profile');
    Route::get('/dang-nhap', [loginController::class, 'index'])->name('login');
    Route::post('/successLogin', [loginController::class, 'store'])->name('successLogin');
    Route::get('/dang-ky', [registerController::class, 'index'])->name('register');
    Route::post('/createRegister', [registerController::class, 'store'])->name('createRegister');
    Route::post('/dang-xuat', [publisherController::class, 'logout'])->name('logout');
    // Route::get('/theo-doi', [followController::class, 'index'])->name('favorite');
    Route::post('/truyen-tranh/{bookstory}', [followController::class, 'follow'])->name('follow');
    Route::delete('/truyen-tranh/{bookstory}', [followController::class, 'unfollow'])->name('unfollow');
});

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
