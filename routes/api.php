<?php

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Route;
use App\http\Controllers\admin\bookstoryController;
use App\Models\Bookstory;
use App\Models\Chapter;
use Illuminate\Support\Facades\Storage;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/test', function (Request $request) {
    echo "hello";
});
Route::post('/truyen', function (Request $request) {
    $truyen = new Bookstory();
    $truyen->title = $request['title'];
    $truyen->slug = $request['slug'];
    $truyen->body = $request['body'];
    $truyen->status = $request['status'];
    // dd($request['images']);
    $truyen->save();
    $chapter = new Chapter();
    $array_images = array();
    if ($request->hasFile('images')) {
        foreach ($request->file('images') as $image) {
            $image_name = $image->getClientOriginalName();
            array_push($array_images, $image_name);
            Storage::disk('local')->put('chapter'.'/'.$image_name, $image, 'public');
        }
    }
    $chapter->title =$request['title'];
    $chapter->slug =$request['slug'];
    $chapter->title_name = $request['title'];

    $chapter->media = json_encode($array_images);
    $chapter->bookstory_id = $truyen->id;
    $chapter->save();
    return response()->json([
        'message' => 'Success',
        'results' => $truyen
    ]);
});
