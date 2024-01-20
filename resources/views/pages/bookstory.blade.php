@extends('../layout')

@push('css')
    <style>
        .background_container {
            background: #151D35;
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
        .section-title h4:after, .section-title h5:after {
            background: #6C74FC;
        }
        .anime__details__form {
            margin-bottom: 55px;
        }
        .table_background {
            border: 1px solid #222F5C;
        }
        .table thead th {
            border-bottom: 2px solid #222F5C;
        }
        .table td, .table th {
            border-top: 1px solid #222F5C;
        }
        @media only screen and (min-width: 768px) and (max-width: 991px) {
            .anime__details__widget ul li span {
                width: 130px;
            }
        }
        @media only screen and (max-width: 479px) {
            .anime__details__widget ul li span {
                width: 130px;
            }
        }
    </style>
@endpush

@section('content')
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="{{ route('home') }}"><i class="fa fa-home"></i> Truyện tranh</a>
                        <span>{{ $bookstory->title }}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container background_container">
            <div class="anime__details__content">
                <div class="row pt-4 pl-2 pr-2">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="{{ Voyager::image($bookstory->image) }}" style="background-image: url('{{ Voyager::image($bookstory->image) }}');">

                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>{{ $bookstory->title }}</h3>
                                <div class="product__item__text">
                                    <ul>
                                        @foreach ($bookstory->pivote_bookstory_category as $key => $value)
                                            <a href="#"><li>{{ $value->title }}</li></a>
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
                                                <span>Tình trạng</span> Đang Cập Nhật
                                            </li>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-arrows-rotate"></i>
                                                <span>Cập nhật</span> 41 phút trước
                                            </li>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-eye"></i>
                                                <span>Lượt xem</span> 221,411
                                            </li>
                                            <li class="mb-2">
                                                <i class="fa-solid fa-bookmark"></i>
                                                <span>Lượt theo dõi</span> 671
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn mt-4">
                                <a href="{{ route('chapter') }}" class="follow-btn active">
                                    <i class="fa-solid fa-book"></i>
                                    Đọc từ đầu
                                </a>
                                <a href="#" class="follow-btn">
                                    <i class="fa-solid fa-book-open"></i>
                                    Đọc tiếp
                                </a>
                                <a href="#" class="follow-btn">
                                    <i class="fa fa-heart-o"></i>
                                    Theo dõi
                                </a>
                                <a href="#" class="follow-btn">
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
                                <a href="{{ route('bookstory', [$value->slug]) }}">{!! $bookstory->title !!}</a>
                                được cập nhật nhanh nhất và đầy đủ nhất tại Cmanga Bạn đọc đừng quên để lại bình luận và chia sẻ,
                                ủng hộ Cmanga ra các chương mới nhất của truyện
                                <a style="color: #fff">{!! $bookstory->title !!}</a> nhé.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    @include('pages.bookstory.listChapter')
                    @include('pages.bookstory.Comment')
                </div>
                <div class="col-lg-4 col-md-4">
                    @include('pages.bookstory.sidebarCategory')
                </div>
            </div>
        </div>
    </section>
    <!-- Anime Section End -->
@endsection
