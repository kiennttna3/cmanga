<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Bookstory;
use App\Models\Pivote_Bookstory_Category;

class bookstoryController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{
    /**
     * Display a listing of the resource.
     */
    // public function index(Request $request)
    // {
    //     //
    // }

    /**
     * Show the form for creating a new resource.
     */
    // public function create(Request $request)
    // {
    //     //
    // }

    /**
     * Store a newly created resource in storage.
     */
    // public function store(Request $request)
    // {
    //     //
    // }

    /**
     * Display the specified resource.
     */
    // public function show(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Show the form for editing the specified resource.
     */
    // public function edit(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Update the specified resource in storage.
     */
    // public function update(Request $request, $id)
    // {
    //     //
    // }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, $id)
    {
        $bookstory = Bookstory::find($id);

        Pivote_Bookstory_Category::where('bookstory_id', [$bookstory->id])->delete();

        $bookstory->delete();
        return redirect()->back();
    }
}
