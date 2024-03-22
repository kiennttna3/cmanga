<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;
use App\Models\Category;
use App\Models\Publisher;

class loginController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $pageMeta = [
            'title' => 'Đăng nhập | Cmanga'
        ];

        return view('user.login')->with(compact('category', 'pageMeta'));
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
        $data = $request->validate(
            [
                'email' => 'required|string|email',
                'password' => 'required',
            ]
        );
        $publisher = Publisher::where('email', $data['email'])->first();

        if ($publisher && Hash::check($data['password'], $publisher->password)) {
            // Mật khẩu chính xác
            Session::put('login_publisher', true);
            Session::put('id', $publisher->id);
            Session::put('name', $publisher->name);
            Session::put('email', $publisher->email);
            Session::put('avatar', $publisher->avatar);
            Session::put('body', $publisher->body);
            return redirect()->route('home');
        } else {
            // Mật khẩu không đúng
            return redirect()->back()->withErrors(['email' => 'Email hoặc mật khẩu không chính xác']);
        }
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
