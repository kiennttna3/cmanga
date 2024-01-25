<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Bookstory;
use App\Models\pivot_table_follow;
use Illuminate\Support\Facades\Response;

class followController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    // private function FollowCount($id, $increment)
    // {
    //     $bookstory = Bookstory::find($id);

    //     if ($bookstory) {
    //         // Cập nhật bản ghi
    //         $bookstory->update([
    //             'follow' => $bookstory->follow + $increment, //Thêm giá trị
    //         ]);
    //     }
    // }

    public function follow(Bookstory $bookstory)
    {
        $publisher = Session::get('id');

        if ($publisher) {
            // Tạo bản ghi
            pivot_table_follow::create([
                'publisher_id' => $publisher,
                'bookstory_id' => $bookstory->id,
                'created_at' => now(),
            ]);
            // $this->FollowCount($bookstory->id, 1);
        }
        return Response::json(['success' => true]);
    }

    public function unfollow(Bookstory $bookstory)
    {
        $publisher = Session::get('id');

        if ($publisher) {
            // Xóa bản ghi
            pivot_table_follow::where('publisher_id', $publisher)->where('bookstory_id', $bookstory->id)->delete();
            // $this->FollowCount($bookstory->id, -1);
        }
        return Response::json(['success' => true]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
