<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Bookstory;
use App\Models\Category;

class readhistoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $publisher = Session::get('id');

        $bookstory = Bookstory::select('pivot_table_readhistory.*', 'bookstory.title', 'bookstory.image', 'bookstory.view', 'bookstory.slug as slug_book', 'bookstory.follow', 'bookstory.featured', 'chapter.title_name', 'chapter.slug')
        ->join('pivot_table_readhistory', 'bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
        ->join('chapter', 'chapter.id', '=', 'pivot_table_readhistory.chapter_id')
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
        ->orderByRaw('CASE WHEN chapter_created_at > bookstory.created_at THEN chapter_created_at ELSE bookstory.created_at END DESC')
        ->where('pivot_table_readhistory.publisher_id', $publisher)
        ->where('bookstory.status', 'ACTIVE')
        ->paginate(21);

        $count = Bookstory::select('bookstory.*')
        ->join('pivot_table_readhistory', 'bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
        ->where('pivot_table_readhistory.publisher_id', $publisher)
        ->where('status', 'ACTIVE')
        ->get();

        $pageMeta = [
            'title' => 'Lịch sử đọc truyện | Cmanga'
        ];

        return view('pages.readHistory')->with(compact('category', 'bookstory', 'count', 'pageMeta'));
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
