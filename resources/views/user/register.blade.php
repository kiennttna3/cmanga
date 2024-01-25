@extends('../layout')
@push('css')
    <style>
        .login__form form .input__item span.invalid-feedback {
            position: relative;
            font-size: 14px;
        }
    </style>
@endpush
@section('content')
    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>ĐĂNG KÝ</h2>
                        <p>CHÀO MỪNG BẠN ĐẾN VỚI WEBSITE.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Signup Section Begin -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Đăng Ký</h3>
                        <form method="POST" action="{{ route('createRegister') }}">
                            @csrf
                            <div class="input__item">
                                <input id="email" type="email" name="email" class="form-control _ge_de_ol @error('email') is-invalid @enderror" type="email" placeholder="Địa chỉ email" required="" aria-required="true" value="{{ old('email') }}" required autocomplete="email" tabindex="" autofocus>
                                <span class="icon_mail"></span>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="input__item" style="height: 50px;">
                                <input id="name" type="text" name="name" class="form-control _ge_de_ol @error('name') is-invalid @enderror" placeholder="Tên hiển thị" required="" aria-required="true" value="{{ old('name') }}" required autocomplete="name">
                                <span class="icon_profile"></span>
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="input__item">
                                <input id="password" type="password" name="password" class="form-control _ge_de_ol @error('password') is-invalid @enderror" type="text" placeholder="Mật khẩu" required="" aria-required="true" required autocomplete="new-password">
                                <span class="icon_lock"></span>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="input__item">
                                <input id="password-confirm" type="password" name="password_confirmation" class="form-control _ge_de_ol" type="text" placeholder="Xác nhận mật khẩu" required="" aria-required="true" required autocomplete="new-password">
                                <span class="icon_lock"></span>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <button type="submit" name="submit" id="submit" class="site-btn">Đăng Ký</button>
                        </form>
                        {{-- <h5>Bạn đã có tài khoản? <a href="{{ route('login') }}">Đăng nhập ngay!</a></h5> --}}
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>Bạn đã có tài khoản?</h3>
                        <a href="{{ route('login') }}" class="primary-btn">Đăng nhập ngay</a>
                    </div>
                </div>
                {{-- <div class="col-lg-6">
                    <div class="login__social__links">
                        <h3>Login With:</h3>
                        <ul>
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a>
                            </li>
                            <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li>
                        </ul>
                    </div>
                </div> --}}
            </div>
        </div>
    </section>
    <!-- Signup Section End -->
@endsection
