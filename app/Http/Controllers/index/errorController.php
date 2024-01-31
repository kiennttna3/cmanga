<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Bookstory;
use App\Models\Chapter;
use App\Models\Pivot_table_error;

class errorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    public function reportError(Request $request, $slug)
    {
        $request->validate([
            'error_type' => 'required',
            'body' => 'required',
        ]);

        $bookstory = Bookstory::where('slug', $slug)->where('status', 'ACTIVE')->first();

        Pivot_table_error::create([
            'bookstory_id' => $bookstory->id,
            'error_type' => $request->input('error_type'),
            'body' => $request->input('body')
        ]);
        return redirect()->back();
    }

    public function reportErrorChapter(Request $request, $slug_bookstory, $slug)
    {
        $request->validate([
            'error_type' => 'required',
            'body' => 'required',
        ]);

        $bookstory = Bookstory::where('slug', $slug_bookstory)->where('status', 'ACTIVE')->first();

        $chapter = Chapter::where('slug', $slug)->where('bookstory_id', $bookstory->id)->where('status', 'ACTIVE')->first();

        Pivot_table_error::create([
            'bookstory_id' => $bookstory->id,
            'chapter_id' => $chapter->id,
            'error_type' => $request->input('error_type'),
            'body' => $request->input('body')
        ]);
        return redirect()->back();
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
