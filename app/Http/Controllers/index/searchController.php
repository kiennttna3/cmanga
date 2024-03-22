<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Carbon;
use App\Models\Bookstory;
use App\Models\Category;
use App\Models\Pivot_table_comment;
use App\Models\Pivot_table_view;

class searchController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $slide = Bookstory::orderBy('view', 'DESC')->where('featured', '1')->where('status', 'ACTIVE')->paginate(5);

        $publisher = Session::get('id');

        $keyword = $_GET['keyword'];

        $bookstory = Bookstory::select('bookstory.*', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->leftJoin('pivot_table_readhistory', function($join) use ($publisher) {
            $join->on('bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
                 ->where(function($query) use ($publisher) {
                     $query->whereNull('pivot_table_readhistory.chapter_id')
                           ->orWhere('pivot_table_readhistory.publisher_id', $publisher);
                 });
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
        ->where('bookstory.title', 'LIKE', '%'.$keyword.'%')
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
                 ->where(function($query) use ($publisher) {
                     $query->whereNull('pivot_table_readhistory.chapter_id')
                           ->orWhere('pivot_table_readhistory.publisher_id', $publisher);
                 });
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
        ->take(20)
        ->get();

        $viewDay = Bookstory::select('bookstory.*', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
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
        ->groupBy('bookstory.id')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $viewWeek = Bookstory::select('bookstory.*', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
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
        ->groupBy('bookstory.id')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $viewMonth = Bookstory::select('bookstory.*', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
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
        ->groupBy('bookstory.id')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $viewYear = Bookstory::select('bookstory.*', Pivot_table_view::raw('sum(pivot_table_view.view) as total_view'))
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
        ->groupBy('bookstory.id')
        ->orderBy('total_view', 'desc')
        ->where('bookstory.status', 'ACTIVE')
        ->limit(5)
        ->get();

        $pageMeta = [
            'title' => 'Kho truyện khổng lồ - Cập nhật trong tích tắc - cmanga'
        ];

        return view('pages.search')->with(compact('category', 'slide', 'keyword', 'bookstory', 'check', 'follow', 'viewComment', 'viewDay', 'viewWeek', 'viewMonth', 'viewYear', 'pageMeta'));
    }

    public function search_ajax(Request $request)
    {
        $data = $request->all();
        if ($data['keywords']) {
            $bookstory = Bookstory::select('bookstory.*')
            ->selectSub(function($query) {
                $query->select('title_name')->from('chapter')
                    ->whereColumn('bookstory_id', 'bookstory.id')
                    ->where('status', 'ACTIVE')
                    ->latest()->limit(1);
            }, 'chapter_title')
            ->where('status', 'ACTIVE')
            ->where('title', 'LIKE', '%' . $data['keywords'] . '%')
            ->limit(5)
            ->get();
            $output = '<ul class="dropdown-menu" style="display:block;background-color: #151D35;max-height: 500px;overflow: auto;max-width: 100%;">';
            if ($bookstory->count() > 0) {
                foreach ($bookstory as $key => $value) {
                    $image = Voyager::image($value->image);
                    $shortTentruyen = \Illuminate\Support\Str::limit($value->title, 100);
                    $output .= '
                    <li class="dropdown-item" style="text-decoration: none; margin-right: 0; padding: 0">
                        <div class="col-md-12">
                            <div class="d-flex">
                                <div class="custom-thumbnail mr-2" style="width: 65px; height: 86px; overflow: hidden;">
                                    <a href="'. route('bookstory', [$value->slug]).'" style="padding: 0; display: contents   ">
                                        <img style="height: 100%; width: auto; min-width: 100%;" src="'.$image.'" alt="'.$value->title.'"/>
                                    </a>
                                </div>
                                <div class="text-white" style="max-width: calc(100% - 80px);width: 100%;max-height: 45px;overflow: hidden;">
                                    <a href="'. route('bookstory', [$value->slug]).'" style="text-decoration: none; padding: 0; color: #fff;height: fit-content;">
                                    '.$shortTentruyen.'
                                    </a>
                                    <div class="text-white">
                                        '.$value->chapter_title.'
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    ';
                }
            } else {
                $output .= '<li class="dropdown-item" style="text-decoration: none; cursor: pointer; color: #fff;width: -webkit-fill-available;">Không tìm thấy kết quả cần tìm!</li>';
            }
        }
        $output .= '</ul>';
        echo $output;
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
