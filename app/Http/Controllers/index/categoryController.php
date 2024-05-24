<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Carbon;
use App\Models\Bookstory;
use App\Models\Category;
use App\Models\Pivote_Bookstory_Category;
use App\Models\Pivot_table_comment;
use App\Models\Pivot_table_view;

class categoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, $slug)
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $slide = Bookstory::orderBy('view', 'DESC')->where('featured', '1')->where('status', 'ACTIVE')->paginate(5);

        $category_book = Category::where('slug', $slug)->where('status', 'ACTIVE')->first();

        $pivote_Bookstory_Category = Pivote_Bookstory_Category::where('category_id', $category_book->id)->get();

        $many_Bookstory_Category = [];

        foreach ($pivote_Bookstory_Category as $key => $value) {
            $many_Bookstory_Category[] = $value->bookstory_id;
        }

        $publisher = Session::get('id');

        $bookstory = Bookstory::select('bookstory.*', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->leftJoin('pivot_table_readhistory', function($join) use ($publisher) {
            $join->on('bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
                 ->where('pivot_table_readhistory.publisher_id', $publisher);
        })
        ->leftJoin('chapter', 'chapter.id', '=', 'pivot_table_readhistory.chapter_id')
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
        ->whereIn('bookstory.id', $many_Bookstory_Category)
        ->where('bookstory.status', 'ACTIVE')
        ->paginate(24);

        $check = Bookstory::select('pivot_table_readhistory.*')
        ->join('pivot_table_readhistory', 'bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
        ->where('pivot_table_readhistory.publisher_id', $publisher)
        ->where('bookstory.status', 'ACTIVE')
        ->first();

        $follow = Bookstory::select('bookstory.*', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->join('pivot_table_follow', 'bookstory.id', '=', 'pivot_table_follow.bookstory_id')
        ->leftJoin('pivot_table_readhistory', function($join) use ($publisher) {
            $join->on('bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
                 ->where('pivot_table_readhistory.publisher_id', $publisher);
        })
        ->leftJoin('chapter', 'chapter.id', '=', 'pivot_table_readhistory.chapter_id')
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
        ->where('pivot_table_follow.publisher_id', $publisher)
        ->where('bookstory.status', 'ACTIVE')
        ->take(5)
        ->get();

        $viewComment = Pivot_table_comment::select('pivot_table_comment.*', 'publisher.avatar', 'publisher.name', 'bookstory.title', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->join('publisher', 'publisher.id', '=', 'pivot_table_comment.publisher_id') //kết hợp thông tin từ bảng. Kết quả sẽ chứa tất cả các cột từ cả hai bảng, và nếu không có dữ liệu khớp, các cột từ bảng sẽ có giá trị NULL.
        ->leftJoin('bookstory', 'bookstory.id', '=', 'pivot_table_comment.bookstory_id')
        ->leftJoin('chapter', 'chapter.id', '=', 'pivot_table_comment.chapter_id')
        ->orderByDesc('created_at')
        ->take(21)
        ->get();

        $viewDay = Bookstory::select('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
        ->join('pivot_table_view', 'bookstory.id', '=', 'pivot_table_view.bookstory_id')
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
        // ->where('pivot_table_view.created_at', '>=', now()->startOfDay())
        ->whereDate('pivot_table_view.created_at', '=', Carbon::today())
        ->groupBy('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $viewWeek = Bookstory::select('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
        ->join('pivot_table_view', 'bookstory.id', '=', 'pivot_table_view.bookstory_id')
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
        ->whereBetween('pivot_table_view.created_at', [now()->startOfWeek(), now()->endOfWeek()])
        ->groupBy('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $viewMonth = Bookstory::select('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
        ->join('pivot_table_view', 'bookstory.id', '=', 'pivot_table_view.bookstory_id')
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
        // ->where('pivot_table_view.created_at', '>=', now()->startOfMonth())
        ->whereMonth('pivot_table_view.created_at', '=', Carbon::today())
        ->groupBy('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $viewYear = Bookstory::select('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
        ->join('pivot_table_view', 'bookstory.id', '=', 'pivot_table_view.bookstory_id')
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
        // ->where('pivot_table_view.created_at', '>=', now()->startOfYear())
        ->whereYear('pivot_table_view.created_at', '=', Carbon::today())
        ->groupBy('bookstory.id', 'bookstory.title', 'bookstory.image', 'bookstory.slug', 'bookstory.status', 'bookstory.created_at', 'bookstory.view')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $pageMeta = [
            'title' => 'Kho truyện khổng lồ - Cập nhật trong tích tắc - cmanga'
        ];

        Session::put('previous_url', $request->url());

        return view('pages.category')->with(compact('category', 'slide', 'category_book', 'bookstory', 'check', 'follow', 'viewComment', 'viewDay', 'viewWeek', 'viewMonth', 'viewYear', 'pageMeta'));
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
