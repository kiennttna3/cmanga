<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Bookstory;
use App\Models\Category;
use App\Models\Pivote_Bookstory_Category;
use App\Models\Pivot_table_comment;

class categoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($slug)
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $category_book = Category::where('slug', $slug)->where('status', 'ACTIVE')->first();

        $pivote_Bookstory_Category = Pivote_Bookstory_Category::where('category_id', $category_book->id)->get();

        $many_Bookstory_Category = [];

        foreach ($pivote_Bookstory_Category as $key => $value) {
            $many_Bookstory_Category[] = $value->bookstory_id;
        }

        $publisher = Session::get('id');

        $bookstory = Bookstory::select('bookstory.*')
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
        ->orderByRaw('CASE WHEN chapter_created_at > created_at THEN chapter_created_at ELSE created_at END DESC')
        ->whereIn('id', $many_Bookstory_Category)
        ->where('status', 'ACTIVE')
        ->paginate(20);

        $follow = Bookstory::select('bookstory.*')
        ->join('pivot_table_follow', 'bookstory.id', '=', 'pivot_table_follow.bookstory_id')
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
        ->where('pivot_table_follow.publisher_id', $publisher)
        ->orderByRaw('CASE WHEN chapter_created_at > bookstory.created_at THEN chapter_created_at ELSE bookstory.created_at END DESC')
        ->where('status', 'ACTIVE')
        ->take(5)
        ->get();

        $viewComment = Pivot_table_comment::select('pivot_table_comment.*', 'publisher.avatar', 'publisher.name', 'bookstory.title', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->join('publisher', 'publisher.id', '=', 'pivot_table_comment.publisher_id') //kết hợp thông tin từ bảng. Kết quả sẽ chứa tất cả các cột từ cả hai bảng, và nếu không có dữ liệu khớp, các cột từ bảng sẽ có giá trị NULL.
        ->leftjoin('bookstory', 'bookstory.id', '=', 'pivot_table_comment.bookstory_id')
        ->leftjoin('chapter', 'chapter.id', '=', 'pivot_table_comment.chapter_id')
        ->orderByDesc('created_at')
        ->get();

        return view('pages.category')->with(compact('category', 'category_book', 'bookstory', 'follow', 'viewComment'));
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
