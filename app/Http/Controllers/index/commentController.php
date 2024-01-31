<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Response;
use App\Models\Bookstory;
use App\Models\Chapter;
use App\Models\Pivot_table_comment;

class commentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    public function postComment(Request $request, $slug)
    {
        $publisher = Session::get('id');

        $request->validate([
            'body' => 'required',
        ]);

        $bookstory = Bookstory::where('slug', $slug)->where('status', 'ACTIVE')->first();

        if ($publisher) {
            // Tạo bản ghi
            $comment = Pivot_table_comment::create([
                'publisher_id' => $publisher,
                'bookstory_id' => $bookstory->id,
                'body' => $request->input('body')
            ]);

            $viewComment = Pivot_table_comment::select('pivot_table_comment.*', 'publisher.avatar', 'publisher.name', 'chapter.title_name', 'chapter.slug')
            ->join('publisher', 'publisher.id', '=', 'pivot_table_comment.publisher_id')
            ->leftjoin('chapter', 'chapter.id', '=', 'pivot_table_comment.chapter_id') //kết hợp thông tin từ bảng. Kết quả sẽ chứa tất cả các cột từ cả hai bảng, và nếu không có dữ liệu khớp, các cột từ bảng sẽ có giá trị NULL.
            ->where('pivot_table_comment.id', $comment->id)
            ->first();
        }

        return Response::json(['success' => true, 'comment' => $viewComment]);
    }

    public function postCommentChapter(Request $request, $slug_bookstory, $slug)
    {
        $publisher = Session::get('id');

        $request->validate([
            'body' => 'required',
        ]);

        $bookstory = Bookstory::where('slug', $slug_bookstory)->where('status', 'ACTIVE')->first();

        $chapter = Chapter::where('slug', $slug)->where('bookstory_id', $bookstory->id)->where('status', 'ACTIVE')->first();

        if ($publisher) {
            // Tạo bản ghi
            $comment = Pivot_table_comment::create([
                'publisher_id' => $publisher,
                'bookstory_id' => $bookstory->id,
                'chapter_id' => $chapter->id,
                'body' => $request->input('body')
            ]);

            $viewComment = Pivot_table_comment::select('pivot_table_comment.*', 'publisher.avatar', 'publisher.name')
            ->join('publisher', 'publisher.id', '=', 'pivot_table_comment.publisher_id',)
            ->where('pivot_table_comment.id', $comment->id)
            ->first();

        }

        return Response::json(['success' => true, 'comment' => $viewComment]);
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
