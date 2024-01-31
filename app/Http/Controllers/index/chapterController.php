<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Bookstory;
use App\Models\Chapter;
use App\Models\Pivot_table_comment;

class chapterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($slug_bookstory, $slug)
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $bookstory = Bookstory::where('slug', $slug_bookstory)->where('status', 'ACTIVE')->first();

        $chapter = Chapter::where('slug', $slug)->where('bookstory_id', $bookstory->id)->where('status', 'ACTIVE')->first();

        $all_chapter = Chapter::orderBy('id', 'DESC')->where('bookstory_id', $bookstory->id)->where('status', 'ACTIVE')->get();

        $next_chapter = Chapter::orderBy('id')->where('bookstory_id', $bookstory->id)->where('id', '>', $chapter->id)->where('status', 'ACTIVE')->value('slug');

        $previous_chapter = Chapter::orderBy('id', 'DESC')->where('bookstory_id', $bookstory->id)->where('id', '<', $chapter->id)->where('status', 'ACTIVE')->value('slug');

        $countComment = Pivot_table_comment::where('chapter_id', $chapter->id)->get();

        $viewComment = Pivot_table_comment::select('pivot_table_comment.*', 'publisher.avatar', 'publisher.name')
        ->join('publisher', 'publisher.id', '=', 'pivot_table_comment.publisher_id',)
        ->where('pivot_table_comment.chapter_id', $chapter->id)
        ->orderByDesc('created_at')
        ->paginate(10);

        return view('pages.chapter')->with(compact('category', 'bookstory', 'chapter', 'all_chapter', 'next_chapter', 'previous_chapter', 'countComment', 'viewComment'));
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
