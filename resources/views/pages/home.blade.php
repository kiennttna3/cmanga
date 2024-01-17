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
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="product__page__content">
                    <div class="product__page__title">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-10 col-xs-6 col-9">
                                <div class="section-title">
                                    <h4>
                                        <i class="fa-solid fa-arrows-rotate"></i>
                                        Truyện Mới Cập Nhật
                                    </h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-2 col-xs-4 col-3">
                                <div class="product__page__filter">
                                    <div class="product__pagination" style="text-align: inherit">
                                        <a href="#" class="current_page">
                                            <i class="fa-solid fa-filter"></i>
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
                                        <div class="ep"><a href="#">Đang đọc 100</a></div>
                                        <div class="background_option">
                                            <div class="option_view"><i class="fa fa-eye"></i> 11</div>
                                            <div class="option_follow"><i class="fa fa-bookmark"></i> 9141</div>
                                        </div>
                                    </div>
                                    <div class="product__item__text">
                                        <h5><a href="{{ route('bookstory') }}">{{ $value->title }}</a></h5>
                                    </div>
                                    <div class="justify-content-between align-items-center mt-3 product__item__lastchapter">
                                        <div class="btn-group">
                                            <small class="text-muted">
                                                <a href="#">
                                                    {{-- <i class="fa-brands fa-readme"></i> --}}
                                                    Chapter 100
                                                </a>
                                            </small>
                                        </div>
                                        <div class="btn-group">
                                            <small class="text-muted">
                                                {{-- <i class="fa-regular fa-clock"></i> --}}
                                                10 giờ trước
                                            </small>
                                        </div>
                                    </div>
                                    {{-- <div class="product__item__text product__item__lastchapter">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                    </div> --}}
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
                @include('pages.bookstorySidebar')
            </div>
        </div>
    </div>
@endsection
