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

class bookFilterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $slide = Bookstory::orderBy('view', 'DESC')->where('featured', '1')->where('status', 'ACTIVE')->paginate(5);

        $publisher = Session::get('id');

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

        $tags = $request->input('tags');
        $sort = $request->input('sort');

        // Kiểm tra xem tất cả thể loại có được chọn hay không
        $album_filter_tags = in_array('all', $tags);

        // Lấy ra các truyện có ít nhất một trong những thể loại được chọn
        $filterCategory = Pivote_Bookstory_Category::when($tags, function ($query) use ($tags) { //kiểm tra xem biến $tags có tồn tại và có giá trị không trống hay không
            $query->whereIn('category_id', $tags); // thực hiện trong hàm callback của when, theloai_id trong bảng pivote_truyen_theloai phải nằm trong một mảng các giá trị được chỉ định bởi biến $tags.
        })
        ->pluck('bookstory_id'); //Chỉ lấy một cột cụ thể từ kết quả truy vấn, nó trả về một mảng chứa các giá trị của cột truyen_id.

        if($album_filter_tags) {
            switch ($sort) {
                case 0:
                    return redirect()->route('home');
                    // break;
                case 1:
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
                    ->orderBy('bookstory.follow', 'DESC')
                    ->where('bookstory.status', 'ACTIVE')
                    ->paginate(21);
                break;
                case 2:
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
                    ->orderBy('bookstory.view', 'DESC')
                    ->where('bookstory.status', 'ACTIVE')
                    ->paginate(21);
                break;
            }
        } else {
            switch ($sort) {
                case 0:
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
                    ->whereIn('bookstory.id', $filterCategory)
                    ->where('bookstory.status', 'ACTIVE')
                    ->paginate(21);
                break;
                case 1:
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
                    ->orderBy('bookstory.follow', 'DESC')
                    ->whereIn('bookstory.id', $filterCategory)
                    ->where('bookstory.status', 'ACTIVE')
                    ->paginate(21);
                break;
                case 2:
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
                    ->orderBy('bookstory.view', 'DESC')
                    ->whereIn('bookstory.id', $filterCategory)
                    ->where('bookstory.status', 'ACTIVE')
                    ->paginate(21);
                break;
            }
        }

        $pageMeta = [
            'title' => 'Kho truyện khổng lồ - Cập nhật trong tích tắc - cmanga'
        ];

        Session::put('previous_url', $request->url());

        return view('pages.home')->with(compact('category', 'slide', 'bookstory', 'check', 'follow', 'viewComment', 'viewDay', 'viewWeek', 'viewMonth', 'viewYear', 'pageMeta'));
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
