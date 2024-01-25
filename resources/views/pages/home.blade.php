@extends('../layout')
@section('slide')
@include('pages.slide')
@endsection

@push('css')
    <style>
        a {
            color: #fff;
        }
        .product__item__pic .background_option {
            background-color: #293158;
            position: absolute;
            left: 0px;
            bottom: 0px;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            min-width: -webkit-fill-available;
            opacity: .9;
        }
        .product__item__pic .option_view {
            font-size: 14px;
            color: #ffffff;
            display: inline-block;
            padding: 10px 10px;
        }
        .product__item__pic .option_follow {
            font-size: 14px;
            color: #ffffff;
            display: inline-block;
            padding: 10px 10px;
        }
        .product__item__pic .ep {
                font-size: 16px;
                color: #ffffff;
                background: #6C74FC;
                display: inline-block;
                padding: 6px 12px;
                border-radius: 0px;
                border-top-left-radius: 5px;
                border-bottom-left-radius: 5px;
                position: absolute;
                left: auto;
                top: auto;
                right: 0px;
                bottom: 60px;
        }
        .product__item__text h5 a:hover {
            color: #6C74FC;
        }
        .product__sidebar__comment .product__sidebar__comment__item__text .product__sidebar__item__text a:hover {
            color: #6C74FC;
        }
        .product__item__lastchapter {
            position: absolute;
            bottom: 0px;
            display: flex;
            width: 88%;
        }
        .product__item__text {
            padding-bottom: 10px;
        }
        .product__pagination {
            padding-top: 0;
        }
        .product__pagination a.current_page {
            border: 1px solid #fff;
        }
        .product__pagination a i {
            color: #fff;
        }
        .section-title h4:after, .section-title h5:after {
            top: 2px;
            height: 48px;
            background: #6C74FC;
        }
        .section-title h4 {
            line-height: normal;
            padding-top: 6px;
        }
        .product__page__title .product__page__filter {
            text-align: right;
        }
        .product__sidebar .section-title h5:after {
            background: #6C74FC;
        }
        .hot_tags {
            position: absolute;
            right: 10px;
            top: 10px;
            min-height: auto;
            width: auto;
            min-width: auto;
        }
        img {
            border-radius: 5px;
        }
        hr {
            background-color: #222F5C;
        }
        .product__sidebar__view {
            margin-bottom: 35px;
        }
        .comment_avatar {
            width: 60px;
            height: 60px;
            border-radius: 100%;
        }
        .product__sidebar__item__text {
            max-width: calc(100% - 80px);
            max-height: 30px;
            overflow: hidden;
        }
        .background__fittel {
            background-color: #151D35;
            padding: 5px;
            border-top: 1px solid #6C74FC;
        }
        .filter__comment {
            max-height: 1000px;
            overflow: auto;
        }
        .nice-select.open .list,
        .nice-select .list {
            width: -webkit-fill-available;
            background-color: #374151;
            overflow-y: auto;
            max-height: 400px;
        }
        .nice-select .option:hover, .nice-select .option.focus, .nice-select .option.selected.focus {
            background-color: #6C74FC;
        }
        .flex_center a {
            display: flex;
            justify-content: center;
            flex-direction: column;
            margin-left: 10px;
        }
        .nice-select {
            background-color: #2A3254;
            color: #fff;
            border: none;
        }
        .nice-select:hover {
            border-color: #2A3254;
        }
        @media only screen and (max-width: 1199.98px) {
            .product__item__pic .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
        @media only screen and (max-width: 991.98px) {
            .product__item__pic .ep {
                font-size: 14px;
                padding: 6px 12px;
            }
        }
        @media only screen and (max-width: 767.98px) {
            .product__item__pic .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
        @media only screen and (max-width: 575.98px) {
            .product__item__pic .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
    </style>
@endpush

@section('content')
    @include('pages.overlay')
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="product__page__content">
                    <div class="product__page__title">
                        <div class="row">
                            <div class="col-lg-9 col-md-8 col-sm-10 col-xs-6 col-12">
                                <div class="section-title">
                                    <h4>
                                        <i class="fa-solid fa-arrows-rotate"></i>
                                        Truyện Mới Cập Nhật
                                    </h4>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-2 col-xs-4 col-12">
                                <div class="product__page__filter">
                                    <div class="product__pagination flex_center" style="text-align: inherit; display: flex;flex-direction: row-reverse;">
                                        <a id="openForm" class="current_page btn">
                                            <i class="fa-solid fa-filter"></i>
                                        </a>
                                        <a class="current_page btn" onclick="toggleActive(this)">
                                            <i class="fa-solid fa-list"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        @foreach ($bookstory as $key => $value)
                            <div class="product__item col-xl-4 col-lg-4 col-md-4 col-sm-6 col-xs-4 col-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="{{ Voyager::image($value->image) }}" style="background-image: url('{{ Voyager::image($value->image) }}');">
                                        <a href="{{ route('bookstory', [$value->slug]) }}"><img class="product__item__pic" src="" alt=""></a>
                                        @if ($value->featured)
                                            <img class="hot_tags" src="{{ asset('img/hot_tags.png') }}">
                                        @endif
                                        <div class="ep">
                                            <a href="#">
                                                Đang đọc 100
                                            </a>
                                        </div>
                                        <div class="background_option">
                                            <div class="option_view">
                                                <i class="fa fa-eye"></i>
                                                11
                                            </div>
                                            <div class="option_follow">
                                                <i class="fa fa-bookmark"></i>
                                                9141
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product__item__text text_capitalize">
                                        <h5>
                                            <a href="{{ route('bookstory', [$value->slug]) }}">
                                                {{ $value->title }}
                                            </a>
                                        </h5>
                                    </div>
                                    <div class="justify-content-between align-items-center mt-3 product__item__lastchapter">
                                        <div class="btn-group">
                                            <small class="text-muted">
                                                <a href="{{url('truyen-tranh/'.$value->slug.'/'.$value->chapter_slug)}}">
                                                    {{ $value->chapter_title }}
                                                </a>
                                            </small>
                                        </div>
                                        @if ($value->chapter_created_at)
                                            <div class="btn-group">
                                                <small class="text-muted">
                                                    {{ \Carbon\Carbon::parse($value->chapter_created_at)->diffForHumans() }}
                                                </small>
                                            </div>
                                        @endif
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="product__pagination">
                    <a href="#" class="current-page">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    {{-- <a href="#"><i class="fa fa-angle-double-right"></i></a> --}}
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="product__sidebar">
                    @include('pages.home.sidebarFollow')
                    @include('pages.home.sidebarView')
                    @include('pages.home.sidebarComment')
                </div>
            </div>
        </div>
    </div>
@endsection
