<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Bookstory;
use App\Models\Category;
use App\Models\Pivot_table_comment;
use TCG\Voyager\Facades\Voyager;

class searchController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $publisher = Session::get('id');

        $keyword = $_GET['keyword'];

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
        ->where('title', 'LIKE', '%'.$keyword.'%')
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
        ->take(10)
        ->get();

        $viewComment = Pivot_table_comment::select('pivot_table_comment.*', 'publisher.avatar', 'publisher.name', 'bookstory.title', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->join('publisher', 'publisher.id', '=', 'pivot_table_comment.publisher_id') //kết hợp thông tin từ bảng. Kết quả sẽ chứa tất cả các cột từ cả hai bảng, và nếu không có dữ liệu khớp, các cột từ bảng sẽ có giá trị NULL.
        ->leftjoin('bookstory', 'bookstory.id', '=', 'pivot_table_comment.bookstory_id')
        ->leftjoin('chapter', 'chapter.id', '=', 'pivot_table_comment.chapter_id')
        ->orderByDesc('created_at')
        ->get();

        return view('pages.search')->with(compact('category', 'keyword', 'bookstory', 'follow', 'viewComment'));
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
            $output = '<ul class="dropdown-menu" style="display:block;background-color: #151D35;max-height: 500px;overflow: auto;">';
            if ($bookstory->count() > 0) {
                foreach ($bookstory as $key => $value) {
                    $image = Voyager::image($value->image);
                    $shortTentruyen = \Illuminate\Support\Str::limit($value->title, 28);
                    $output .= '
                    <li class="dropdown-item" style="text-decoration: none; margin-right: 0; padding: 0">
                        <div class="col-md-12">
                            <div class="d-flex">
                                <div class="custom-thumbnail mr-2" style="width: 65px; height: 86px; overflow: hidden;">
                                    <a href="'. route('bookstory', [$value->slug]).'" style="padding: 0; display: contents   ">
                                        <img style="height: 100%; width: auto; min-width: 100%;" src="'.$image.'" alt="'.$value->title.'"/>
                                    </a>
                                </div>
                                <div class="text-white">
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
