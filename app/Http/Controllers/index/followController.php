<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;
use App\Models\Bookstory;
use App\Models\Category;
use App\Models\Pivot_table_follow;

class followController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $publisher = Session::get('id');

        $bookstory = Bookstory::select('bookstory.*', 'bookstory.slug as slug_book', 'chapter.title_name', 'chapter.slug')
        ->join('pivot_table_follow', 'bookstory.id', '=', 'pivot_table_follow.bookstory_id')
        ->leftJoin('pivot_table_readhistory', function($join) use ($publisher) {
            $join->on('bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
                 ->where(function($query) use ($publisher) {
                     $query->Where('pivot_table_readhistory.publisher_id', $publisher);
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
        ->paginate(21);

        $check = Bookstory::select('pivot_table_readhistory.*')
        ->join('pivot_table_readhistory', 'bookstory.id', '=', 'pivot_table_readhistory.bookstory_id')
        ->where('pivot_table_readhistory.publisher_id', $publisher)
        ->where('bookstory.status', 'ACTIVE')
        ->first();

        $count = Bookstory::select('bookstory.*')
        ->join('pivot_table_follow', 'bookstory.id', '=', 'pivot_table_follow.bookstory_id')
        ->where('pivot_table_follow.publisher_id', $publisher)
        ->where('status', 'ACTIVE')
        ->get();

        $pageMeta = [
            'title' => 'Danh sách theo dõi | Cmanga'
        ];

        Session::put('previous_url', $request->url());

        return view('pages.follow')->with(compact('category', 'bookstory', 'check', 'count', 'pageMeta'));
    }

    private function FollowCount($id, $increment)
    {
        $bookstory = Bookstory::find($id);

        if ($bookstory) {
            // Cập nhật bản ghi
            $bookstory->update([
                'follow' => $bookstory->follow + $increment, //Thêm giá trị
            ]);
        }
    }

    public function follow(Bookstory $bookstory)
    {
        $publisher = Session::get('id');

        if ($publisher) {
            // Tạo bản ghi
            Pivot_table_follow::create([
                'publisher_id' => $publisher,
                'bookstory_id' => $bookstory->id,
            ]);
            $this->FollowCount($bookstory->id, 1);
        }
        return Response::json(['success' => true]);
    }

    public function unfollow(Bookstory $bookstory)
    {
        $publisher = Session::get('id');

        if ($publisher) {
            // Xóa bản ghi
            Pivot_table_follow::where('publisher_id', $publisher)->where('bookstory_id', $bookstory->id)->delete();
            $this->FollowCount($bookstory->id, -1);
        }
        return Response::json(['success' => true]);
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
