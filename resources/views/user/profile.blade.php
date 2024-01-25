@extends('../layout')
@section('content')
    <style>
        .blog-details {
            padding-top: 0px;
        }
        .site-btn {
            float: right;
        }
        .profilepic {
            position: relative;
            width: 152px;
            margin-left: auto;
            margin-right: auto;
            border-radius: 50%;
            overflow: hidden;
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
    </style>
    <div style="background-size:cover; background-image: url({{ asset('img/background/background.png') }}); background-position: center center;position:absolute; top:0; left:0; width:100%; height:300px;margin-top: 66px;"></div>
    <div style="height:180px; display:block; width:100%"></div>
    <div style="position:relative; z-index:9; text-align:center;">
        <form action="#" method="POST" enctype="multipart/form-data">
            <div class="profilepic">
                <img src="{{ Voyager::image(Session::get('avatar')) }}" id="media" class="avatar" style="border-radius:50%; width:150px; height:150px; border: 5px solid black; margin-left: auto; margin-right: auto; background-color: #2A3254;" alt="">
                <div class="profilepic__content">
                    <span class="profilepic__icon"><i class="fas fa-camera"></i></span>
                    <input class="transparent-input" type="file" name="media" id="file" onchange="displayMedia()">
                    <span class="profilepic__text">Đổi ảnh</span>
                </div>
            </div>
            <button class="text-white" type="submit">Lưu ảnh</button>
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
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" placeholder="Tên hiển thị" value="{{ Session::get('name') }}">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" placeholder="Địa chỉ email" value="{{ Session::get('email') }}">
                                    </div>
                                    <div class="col-lg-12">
                                        <textarea placeholder="Giới thiệu"></textarea>
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
        function displayMedia() {
            var input = document.getElementById('file');
            var preview = document.getElementById('media');

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
