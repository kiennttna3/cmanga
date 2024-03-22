@extends('../layout')
@section('content')
    <style>
        .background_image {
            background-size:cover;
            background-image: url({{ asset('img/background/background.png') }});
            background-position: center center;
            position:absolute;
            top:0;
            left:0;
            width:100%;
            height:300px;
            margin-top: 66px;
        }
        .grid_background_image {
            height:180px;
            display:block;
            width:100%
        }
        .grid_profile {
            position:relative;
            z-index:9;
            text-align:center;
        }
        .blog-details {
            padding-top: 0px;
        }
        .site-btn {
            float: right;
            background-color: #6C74FC;
            border: 0 solid;
            width: 150px;
            height: 44px;
            line-height: 44px;
            font-size: 15px;
            padding: 0 15px;
            margin-bottom: 20px;
            border-radius: 46px;
            margin-left: 20px;
        }
        .btn-submit {
            color: #fff;
        }
        .btn-submit:hover {
            color: #6C74FC;
        }
        .profilepic {
            position: relative;
            width: 152px;
            margin-left: auto;
            margin-right: auto;
            border-radius: 50%;
            overflow: hidden;
        }
        .profilepic img {
            border-radius:50%;
            width:150px;
            height:150px;
            border: 5px solid black;
            margin-left: auto;
            margin-right: auto;
            background-color: #2A3254;

        }

        .profilepic:hover .profilepic__content {
            opacity: 1;
        }

        .profilepic:hover .profilepic__image {
            opacity: .5;
        }

        .profilepic__image {
            object-fit: cover;
            opacity: 1;
            transition: opacity .2s ease-in-out;
        }

        .profilepic__content {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            opacity: 0;
            transition: opacity .2s ease-in-out;
        }

        .profilepic__icon {
            color: white;
            cursor: pointer;
        }

        .fas {
            font-size: 20px;
            margin-bottom: 8px;
            cursor: pointer;
        }

        .profilepic__text {
            text-transform: uppercase;
            font-size: 10px;
            width: 40%;
            text-align: center;
            cursor: pointer;
        }
        .transparent-input {
            position: absolute;
            opacity: 0;
            background-color: rgba(255, 255, 255, 0.5);
            cursor: pointer;
            width: 40%;
        }
        .blog__details__form form input,
        .blog__details__form form textarea {
            background-color: #2A3254;
            border-radius: 5px;
        }
    </style>
    <div class="background_image"></div>
    <div class="grid_background_image"></div>
    <div class="grid_profile">
        <form action="{{ route('avatar') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="profilepic">
                <img src="{{ Voyager::image(Session::get('avatar')) }}" id="avatar" class="avatar" alt="avatar">
                <div class="profilepic__content">
                    <span class="profilepic__icon"><i class="fas fa-camera"></i></span>
                    <input class="transparent-input" type="file" name="avatar" id="file" onchange="displayAvatar()">
                    <span class="profilepic__text">Đổi ảnh</span>
                </div>
            </div>
            <button class="btn-submit" type="submit">Lưu ảnh</button>
        </form>
    </div>
    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="blog__details__content">
                        <div class="blog__details__form">
                            <h4>Thông Tin Cá Nhân</h4>
                            <form action="{{ route('updateRegister') }}" method="POST">
                                @csrf
                                <div class="row">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                        <input type="text" name="name" placeholder="Tên hiển thị" value="{{ Session::get('name') }}">
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-6">
                                        <input type="text" name="email" placeholder="Địa chỉ email" value="{{ Session::get('email') }}">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <textarea name="body" placeholder="Giới thiệu">{!! Session::get('body') !!}</textarea>
                                        <button type="submit" class="site-btn">Lưu</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->
@endsection

@push('js')
    <script>
        function displayAvatar() {
            var input = document.getElementById('file');
            var preview = document.getElementById('avatar');

            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    preview.src = e.target.result;
                    preview.style.display = 'block';
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
@endpush
