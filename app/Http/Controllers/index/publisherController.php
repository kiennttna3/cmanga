<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use App\Models\Category;
use App\Models\Publisher;

class publisherController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $publisher = Session::get('id');

        $pageMeta = [
            'title' => 'Trang cá nhân | '.Session::get('name')
        ];

        return view('user.profile')->with(compact('category', 'pageMeta'));
    }

    public function logout()
    {
        Session::forget('login_publisher');
        Session::forget('id');
        Session::forget('name');
        Session::forget('email');
        Session::forget('avatar');
        Session::forget('body');

        return redirect()->route('home');
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
        $publisher_id = Session::get('id');
        $publisher = Publisher::find($publisher_id);

        // Kiểm tra xem có tệp tin ảnh mới được tải lên không
        if ($request->hasFile('avatar')) {
            $image = $request->file('avatar');
            $imageName = time() . '.' . $image->getClientOriginalExtension();

            // Lưu ảnh vào thư mục storage của Voyager
            Storage::put('public/publisher/' . $imageName, file_get_contents($image));

            // Cập nhật đường dẫn ảnh trong cơ sở dữ liệu
            $publisher->updateAvatar('publisher/' . $imageName);
        }

        // Cập nhật session
        session(['avatar' => $publisher->avatar]);

        return redirect()->back();
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
    public function update(Request $request)
    {
        $publisher_id = Session::get('id');

        $data = $request->validate([
            'name' => 'nullable',
            'email' => 'nullable|email',
            'body' => 'nullable',
        ]);

        $publisher = Publisher::find($publisher_id);
        $publisher->name = $data['name'];
        $publisher->email = $data['email'];
        $publisher->body = $data['body'];
        $publisher->save();

        session(['name' => $publisher->name]);
        session(['email' => $publisher->email]);
        session(['body' => $publisher->body]);

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
