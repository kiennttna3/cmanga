<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Category;
use App\Models\Bookstory;
use App\Models\Chapter;
use App\Models\Pivote_Bookstory_Category;
use App\Models\pivot_table_follow;

class bookstoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($slug)
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $bookstory = Bookstory::where('slug', $slug)->where('status', 'ACTIVE')->first();

        $chapter = Chapter::orderBy('title', 'DESC')->where('bookstory_id', $bookstory->id)->get();

        $chapter_first = Chapter::orderBy('id')->where('bookstory_id', $bookstory->id)->where('status', 'ACTIVE')->first();

        $chapter_last = Chapter::orderBy('id', 'DESC')->where('bookstory_id', $bookstory->id)->where('status', 'ACTIVE')->first();

        $pivote_Bookstory_Category = Pivote_Bookstory_Category::where('bookstory_id', $bookstory->id)->get();

        $many_Bookstory_Category = [];

        foreach ($pivote_Bookstory_Category as $key => $value) {
            $many_Bookstory_Category[] = $value->category_id;
        }

        $categoryTogether = Bookstory::select('bookstory.*')
        ->join('pivote_bookstory_category', 'bookstory.id', '=', 'pivote_bookstory_category.bookstory_id')
        ->join('category', 'pivote_bookstory_category.category_id', '=', 'category.id')
        ->selectSub(function($query) {
            $query->select('title_name')->from('chapter')
                ->whereColumn('bookstory_id', 'bookstory.id')
                ->where('status', 'ACTIVE')
                ->latest()->limit(1);
        }, 'chapter_title')
        ->selectSub(function($query) {
            $query->select('slug')->from('chapter')
                ->whereColumn('bookstory_id', 'bookstory.id')
                ->where('status', 'ACTIVE')
                ->latest()->limit(1);
        }, 'chapter_slug')
        ->selectSub(function($query) {
            $query->select('created_at')->from('chapter')
                ->whereColumn('bookstory_id', 'bookstory.id')
                ->where('status', 'ACTIVE')
                ->latest()->limit(1);
        }, 'chapter_created_at')
        ->whereNotIn('bookstory.id', [$bookstory->id])
        ->whereIn('pivote_bookstory_category.category_id', $many_Bookstory_Category)
        ->where('bookstory.status', 'ACTIVE')
        ->where('category.status', 'ACTIVE')
        ->orderByRaw('CASE WHEN chapter_created_at > bookstory.created_at THEN chapter_created_at ELSE bookstory.created_at END DESC')
        ->distinct()
        ->take(8)
        ->get();

        $checkfollow = pivot_table_follow::where('publisher_id', Session::get('id'))->where('bookstory_id', $bookstory->id)->exists();

        return view('pages.bookstory')->with(compact('category', 'bookstory', 'chapter', 'chapter_first' , 'chapter_last', 'categoryTogether', 'checkfollow'));
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
