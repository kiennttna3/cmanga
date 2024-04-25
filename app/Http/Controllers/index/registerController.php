<?php

namespace App\Http\Controllers\index;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use App\Models\Category;
use App\Models\Publisher;
use Illuminate\Support\Facades\Hash;

class registerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $category = Category::orderBy('title')->where('status', 'ACTIVE')->get();

        $pageMeta = [
            'title' => 'Đăng ký | Cmanga'
        ];

        return view('user.register')->with(compact('category', 'pageMeta'));
    }

    public function createRegister() {

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
                'name' => 'required|string|max:255',
                'email' => 'required|string|email|unique:publisher|max:255',
                'password' => 'required|min:8|confirmed',
            ],
            [
                'email.unique' => 'Địa chỉ email đã có, xin điền tên khác',
                'email.required' => 'Địa chỉ email không được để trống',
                'name.required' => 'Tên hiển thị không được để trống',
                'password.required' => 'Mật khẩu không được để trống',
                'password.min' => 'Mật khẩu phải chứa ít nhất 8 ký tự',
                'password.confirmed' => 'Mật khẩu xác nhận không khớp',
            ]
        );
        $publisher = new Publisher();
        $publisher->name = $data['name'];
        $publisher->email = $data['email'];
        $publisher->password = Hash::make($data['password']);
        $publisher->avatar = 'publisher/defaultlogo.png';
        $publisher->save();
        // return redirect()->route('login');
        return Response::json(['success' => true]);
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
