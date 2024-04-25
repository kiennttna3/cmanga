@extends('../layout')
@push('css')
    <style>
        .login__form form .input__item span.invalid-feedback {
            position: relative;
            font-size: 14px;
        }
        .site-btn {
            background: #6C74FC;

        }
        .login__register .primary-btn {
            background: #6C74FC;
        }
        .login__form .capslock_warning {
            margin: 10px 12px 0 12px;
            font-size: 14px;
            color: yellow;
        }
    </style>
@endpush
@section('content')
    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="{{ asset('img/background-breadcrumb.jpg') }}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>ĐĂNG NHẬP</h2>
                        <p>CHÀO MỪNG BẠN ĐẾN VỚI WEBSITE.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>Đăng Nhập</h3>
                        <form method="POST" action="{{ route('successLogin') }}">
                            @csrf
                            <div class="input__item">
                                <input id="email" type="email" name="email" class="form-control _ge_de_ol @error('email') is-invalid @enderror" type="text" placeholder="Địa chỉ email" equired="" aria-required="true" value="{{ old('email') }}" required autocomplete="email" tabindex="" autofocus>
                                <span class="icon_mail"></span>
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="input__item">
                                <input id="password" type="password" name="password" class="form-control _ge_de_ol @error('password') is-invalid @enderror" type="text" placeholder="Mật khẩu" required="" aria-required="true" required autocomplete="current-password">
                                <span class="icon_lock"></span>
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                <p id="capslock-warning" class="capslock_warning" hidden>⚠️ Caps Lock Đang được bật</p>
                            </div>
                            <button type="submit" name="submit" id="submit" class="site-btn">Đăng Nhập</button>
                        </form>
                        <a href="#" class="forget_pass">Quên mật khẩu?</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>Bạn chưa có tài khoản?</h3>
                        <a href="{{ route('register') }}" class="primary-btn">Đăng ký ngay</a>
                    </div>
                </div>
            </div>
            {{-- <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                            <span>or</span>
                            <ul>
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With
                                Facebook</a></li>
                                <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> --}}
        </div>
    </section>
    <!-- Login Section End -->
@endsection

@push('js')
    <script type="text/javascript">
        // Kiểm tra capsLock
        var pass = document.getElementById('password')
        var warn = document.getElementById('capslock-warning')
        function checkCapsLock(e) {
            if(e.getModifierState && e.getModifierState('CapsLock')) {
                warn.hidden = false
            } else {
                warn.hidden= true
            }
        }
        pass.addEventListener('keyup', checkCapsLock)
        pass.addEventListener('focus', checkCapsLock)

        // Check login
        $(document).ready(function() {
            $('#submit').click(function(e) {
                e.preventDefault()
                var email = $('#email').val()
                var password = $('#password').val()
                var _token = $('input[name="_token"]').val()

                if (email.trim().length === 0 || password.trim().length === 0) {
                    return checkInput()
                }

                var formData = {
                    email: email,
                    password: password,
                    _token: _token
                }

                $.ajax({
                    type: 'POST',
                    url: '{{ route("successLogin") }}',
                    data: formData,
                    dataType: 'json',
                    success: function(data) {
                        if (data.success) {
                            sessionStorage.setItem('loginSuccess', true)
                            window.location.href = '{{ route("home") }}'
                        } else {
                            checkLogin()
                            console.log('Success:', data)
                        }
                    },
                    error: function (data) {
                        console.log('Error:', data)
                    }
                })
            })
        })
        function Notyfi() {
            notyf = new Notyf({
                duration: 5000,
                position: {
                    x: 'right',
                    y: 'bottom',
                },
                types: [
                    {
                        type: 'error',
                        background: 'indianred',
                        dismissible: true
                    }
                ]
            })
        }
        function checkInput() {
            // Nếu không có thông báo nào hiển thị, tạo một instance mới
            if (!notyf) {
                Notyfi()
            }
            // Hiển thị thông báo với độ trễ nhỏ để đảm bảo xếp chồng
            setTimeout(() => {
                notyf.error('Bạn chưa nhập đủ thông tin!')
            }, 100)
        }
        function checkLogin() {
            // Nếu không có thông báo nào hiển thị, tạo một instance mới
            if (!notyf) {
                Notyfi()
            }
            // Hiển thị thông báo với độ trễ nhỏ để đảm bảo xếp chồng
            setTimeout(() => {
                notyf.error('Email hoặc mật khẩu không chính xác!')
            }, 100)
        }
    </script>
@endpush
