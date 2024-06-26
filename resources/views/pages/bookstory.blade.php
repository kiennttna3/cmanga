@extends('../layout')

@push('css')
    <style type="text/css">
        .breadcrumb__links a,
        .breadcrumb__links span {
            font-size: 20px;
            color: #ffffff;
        }
        .breadcrumb__links a.breadcrumb__title:after {
            content: none;
        }
        .background_container {
            background: #151D35;
            border-radius: 5px;
        }
        .product__item__text ul li {
            margin-right: 7px;
            padding: 5px 10px;
            text-transform: capitalize;
            border-radius: 3px;
            margin-bottom: 10px;
            font-size: 16px;
            line-height: 20px;
            background-color: #4A5693;
            font-weight: 600;
        }
        .product__item__text {
            padding: 0;
        }
        .anime-details {
            position: relative;
            width: 96%;
        }
        .anime__details__pic {
            height: 370px;
        }
        .anime__details__widget ul li:before {
            position: absolute;
            left: 0;
            top: 12px;
            height: 6px;
            width: 6px;
            background: transparent;
            content: "";
        }
        .anime__details__title h3 {
            text-transform: capitalize;
        }
        .fa-eye:before,
        .fa-bookmark:before,
        .fa-arrows-rotate:before, .fa-refresh:before, .fa-sync:before,
        .fa-feed:before, .fa-rss:before  {
            position: absolute;
            left: 0px;
            top: 7px;
            height: 6px;
            width: 6px;
        }
        .anime__details__btn .follow-btn {
            background-color: #222F5C;
            color: #fff;
            line-height: 40px;
            border-radius: 150px;
            border: 0;
            margin-right: 4px;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 10px;
            padding: 0 20px;
            vertical-align: inherit;
        }
        .anime__details__btn button:hover,
        .anime__details__btn form:hover,
        .anime__details__btn a:hover  {
            color: #fff;
            cursor: pointer;
        }
        .anime__details__btn .follow-btn.active {
            background-color: #6C74FC;
        }
        .anime__details__text p {
            font-weight: 600;
        }
        a {
            color: #6C74FC;
        }
        .anime__details__sidebar .background__fittel {
            background-color: #1d1e39;
            padding: 5px;
            border-top: 1px solid #6C74FC;
        }
        .anime__details__sidebar .background__fittel img {
            width: 90px;
            height: 130px;
        }
        .section-title h4:after, .section-title h5:after {
            background: #6C74FC;
        }
        .anime__details__form form button{
            background: #6C74FC;
        }
        .anime__details__form {
            margin-bottom: 55px;
        }
        .table thead th {
            border-bottom: 2px solid #222F5C;
        }
        .table td, .table th {
            border-top: 1px solid #222F5C;
        }
        .background {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 350px;
            overflow: hidden;
        }
        .background img {
            width: 100%;
            filter: blur(30px);
            opacity: .6;
        }
        .product__sidebar__comment__item__text h5 {
            max-width: 100%;
            max-height: 30px;
            overflow: hidden;
            line-height: 28px;
        }
        .submit {
            font-size: 18px;
        }
        .post-meta {
            width: 81%;
            margin-right: auto;
            margin-left: auto;
        }
        .pagination {
            justify-content: center;
        }
        .product__pagination a {
            border: 1px solid #ffffff;
            margin: 5px;
        }
        .product__pagination .pagination .active {
            display: inline-block;
            font-size: 15px;
            color: #b7b7b7;
            font-weight: 600;
            height: 50px;
            width: 50px;
            border: 1px solid transparent;
            border-radius: 50%;
            line-height: 48px;
            text-align: center;
            -webkit-transition: all, 0.3s;
            -o-transition: all, 0.3s;
            transition: all, 0.3s;
            border: 1px solid #ffffff;
            margin: 5px;
        }
        .chapter_lite {
            text-decoration: none;
        }
        .chapter_line {
            font-weight:800;
        }
        .tab-scroller {
            max-height: 500px;
            overflow: auto;
        }
        @media only screen and (min-width: 768px) and (max-width: 991px) {
            .anime__details__widget ul li span {
                width: 130px;
            }
        }
        @media only screen and (min-width: 576px) and (max-width: 768px) {
            .anime__details__widget ul li span {
                width: calc(100% - 60%);
            }
            .anime__details__btn .follow-btn {
                font-size: 12px;
            }
            .notyf {
                right: 0;
                width: 50%;
                left: auto;
                font-size: 14px;
            }
        }
        @media only screen and (min-width: 425px) and (max-width: 576px) {
            .anime__details__widget ul li span {
                width: calc(100% - 60%);
            }
            .anime__details__btn .follow-btn {
                font-size: 12px;
            }
            .notyf {
                right: 0;
                width: 50%;
                left: auto;
                font-size: 8px;
            }
            .table thead th {
                font-size: 14px;
            }
            .chapter_lite {
                font-size: 10px;
            }
            .anime__details__title h3 {
                font-size: 22px;
            }
            .anime__details__text p {
                font-size: 14px;
            }
        }
        @media only screen and (max-width: 479px) {
            .breadcrumb__links a, .breadcrumb__links span {
                font-size: calc(100%) !important;
            }
            .anime__details__widget ul li span {
                width: calc(100% - 60%);
            }
            .anime__details__btn .follow-btn {
                font-size: 10px;
            }
            .anime__details__title h3 {
                font-size: 22px;
            }
            .anime__details__text p {
                font-size: 14px;
            }
            .table thead th {
                font-size: 14px;
            }
            .chapter_lite {
                font-size: 10px;
            }
        }
        @media only screen and (max-width: 320px) {
            .breadcrumb__links a, .breadcrumb__links span {
                font-size: calc(100%) !important;
            }
            .anime__details__pic {
                height: 240px;
            }
            .anime__details__title h3 {
                font-size: 18px;
            }
            .product__item__text ul li,
            .anime__details__widget ul li,
            .table thead th,
            .product__sidebar__comment__item__text h5 {
                font-size: 12px;
            }
            .anime__details__widget ul li span {
                width: calc(100% - 54%);
            }
            .anime__details__btn .follow-btn,
            .anime__review__item__text h6,
            .anime__review__item__text p,
            .text-muted,
            .product__sidebar__comment__item__text span,
            .post-meta {
                font-size: 10px;
            }
            .chapter_lite {
                font-size: 9px;
            }
            .product__pagination .pagination .active,
            .pagination_set.product__pagination a {
                width: 40px;
                height: 40px;
                line-height: 38px;
            }
            .product__sidebar__comment .a img {
                width: 60px !important;
                height: 90px !important;
            }
            .text-muted {
                margin: 0 !important;
            }
            .product__sidebar__comment__item__text span {
                margin: 24px 0 0 0 !important;
            }
        }
    </style>
@endpush

@section('content')
    @include('pages.bookstory.overlay')
    <div class="background">
        <img src="{{ Voyager::image($bookstory->image) }}" alt="">
    </div>
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="breadcrumb__links">
                        <a href="{{ route('home') }}"><i class="fa fa-home"></i> Truyện tranh</a>
                        <a class="breadcrumb__title" href="{{ route('bookstory', [$bookstory->slug]) }}">{{ $bookstory->title }}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad margin_auto">
        <div class="container background_container">
            <div class="anime__details__content">
                <div class="row pt-4 pl-2 pr-2">
                    <div class="margin_auto col-xl-3 col-lg-3 col-md-4 col-sm-6 col-10">
                        <div class="anime__details__pic set-bg" data-setbg="{{ Voyager::image($bookstory->image) }}" style="background-image: url('{{ Voyager::image($bookstory->image) }}');">
                            <img class="product__item__pic">
                        </div>
                    </div>
                    <div class="col-lg-9 col-lg-9 col-md-8 col-sm-12 col-12">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>{{ $bookstory->title }}</h3>
                                <div class="product__item__text">
                                    <ul>
                                        @foreach ($bookstory->pivote_bookstory_category as $key => $value)
                                            <a href="{{ route('category', [$value->slug]) }}"><li>{{ $value->title }}</li></a>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12">
                                        <ul>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-rss"></i>
                                                <span>Tình trạng</span> {{ $bookstory->statusproblem }}
                                            </li>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-arrows-rotate"></i>
                                                <span>Cập nhật</span> {{ $chapter_last ? $chapter_last->created_at->diffForHumans() : 0 }}
                                            </li>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-eye"></i>
                                                <span>Lượt xem</span> {{ $bookstory->view }}
                                            </li>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-bookmark"></i>
                                                <span>Lượt theo dõi</span> {{ $bookstory->follow }}
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn mt-4">
                                @if($chapter_first)
                                    <a href="{{ route('chapter', [$chapter_first->bookstory->slug, $chapter_first->slug]) }}" class="follow-btn active">
                                        <i class="fa-solid fa-book"></i>
                                        Đọc từ đầu
                                    </a>
                                    <a href="{{ route('chapter', [$chapter_last->bookstory->slug, $chapter_last->slug]) }}" class="follow-btn">
                                        <i class="fa-solid fa-book"></i>
                                        Đọc mới nhất
                                    </a>
                                @else
                                    <a href="" class="follow-btn active">
                                        <i class="fa-solid fa-book"></i>
                                        Đọc từ đầu
                                    </a>
                                @endif
                                @if (Session::get('login_publisher'))
                                    @if ($checkRead)
                                        <a href="{{ route('chapter', [$bookstory->slug, $chapter_continue->slug]) }}" class="follow-btn">
                                            <i class="fa-solid fa-book-open"></i>
                                            Đọc tiếp
                                        </a>
                                    @endif
                                    @if ($checkFollow)
                                        <a class="follow-btn active" id="follow-btn" data-action="{{ route('unfollow', $bookstory) }}">
                                            <i class="fa-regular fa-heart"></i>
                                            Hủy theo dõi
                                        </a>
                                    @else
                                        <a class="follow-btn" id="follow-btn" data-action="{{ route('follow', $bookstory) }}">
                                            <i class="fa-solid fa-heart"></i>
                                            theo dõi
                                        </a>
                                    @endif
                                @else
                                    <a class="follow-btn" onclick="checkPublisher()">
                                        <i class="fa fa-heart-o"></i>
                                        Theo dõi
                                    </a>
                                @endif
                                <a id="openForm" class="btn follow-btn">
                                    <i class="fa-solid fa-triangle-exclamation"></i>
                                    Báo lỗi
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="anime__details__content">
                <div class="row pt-4 pl-2 pr-2">
                    <div class="col-lg-12">
                        <div class="anime__details__title">
                            <h3>
                                <i class="fa-solid fa-circle-info"></i>
                                Giới Thiệu
                            </h3>
                        </div>
                        <div class="anime__details__text">
                            <p>{!! $bookstory->body !!}</p>
                            <p>
                                <a style="color: #6C74FC" href="{{ route('bookstory', [$bookstory->slug]) }}">{!! $bookstory->title !!}</a>
                                được cập nhật nhanh nhất và đầy đủ nhất tại Cmanga Bạn đọc đừng quên để lại bình luận và chia sẻ,
                                ủng hộ Cmanga ra các chương mới nhất của truyện
                                <a style="color: #fff">{!! $bookstory->title !!}</a> nhé.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-8 col-lg-8 col-md-7 col-sm-12 col-12">
                    @include('pages.bookstory.listChapter')
                    @include('pages.bookstory.comment')
                </div>
                <div class="col-xl-4 col-lg-4 col-md-5 col-sm-12 col-12">
                    @include('pages.bookstory.sidebarCategory')
                </div>
            </div>
        </div>
    </section>
    <!-- Anime Section End -->
@endsection

@push('js')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#follow-btn').on('click', function (e) { //Sử lý sự kiện click
                e.preventDefault(); // Ngăn chặn hành vi load lại trang web
                var action = $(this).data('action') //Lấy đường dẫn
                var check = $(this).hasClass('active') //Kiểm tra

                $.ajax({ //Thực hiện ajax
                    type: check ? 'DELETE' : 'POST',
                    url: action,
                    data: {
                        _token: '{{ csrf_token() }}',
                    },
                    success: function (data) {
                        console.log('Success:', data)
                        $(this).toggleClass('active')
                        var checkButton = check ? 'Theo dõi' : 'Hủy theo dõi'
                        $(this).html('<i class="fa fa-heart-o"></i> ' + checkButton)
                        if(!check) {
                            showNotyf('Theo dõi thành công!')
                        } else {
                            showNotyf('Hủy theo dõi thành công!')
                        }
                    }.bind(this),
                    error: function (data) {
                        console.log('Error:', data)
                    }
                })
            })
        })
    </script>
@endpush
