@extends('../layout')
@section('slide')
@include('pages.slide')
@endsection

@push('css')
    <style type="text/css">
        a {
            color: #fff;
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
        img {
            border-radius: 5px;
        }
        hr {
            background-color: #222F5C;
        }
        .flex_center a {
            display: flex;
            justify-content: center;
            flex-direction: column;
            margin-left: 10px;
        }
        .pagination {
            justify-content: center;
        }
        .background__fittel {
            background-color: #151D35;
            padding: 5px;
            border-top: 1px solid #6C74FC;
        }
        @media only screen and (max-width: 320px) {
            .product__sidebar .section-title h5,
            .product__sidebar__comment__item__text h5 {
                font-size: 14px;
            }
            .product__sidebar__comment__item__text h5,
            .text-muted {
                font-size: 12px;
            }
            .product__pagination .pagination .active,
            .pagination_set.product__pagination a {
                width: 40px;
                height: 40px;
                line-height: 38px;
            }
            .anime__review__item__text h6,
            .text-muted,
            .product__sidebar__comment__item__text span {
                font-size: 10px;
                margin: 22px 0 0 0 !important;
            }
            .product__sidebar__comment .a img {
                width: 60px !important;
                height: 90px !important;
            }
            .text-muted {
                margin: 0 !important;
            }
        }
    </style>
@endpush

@section('content')
    @include('pages.home.overlay')
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                <div class="product__page__content">
                    <div class="product__page__title">
                        <div class="row">
                            <div class="col-lg-9 col-md-8 col-sm-8 col-12">
                                <div class="section-title">
                                    <h4>
                                        <i class="fa-solid fa-arrows-rotate"></i>
                                        {{ $category_book->title }}
                                    </h4>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-4 col-12">
                                <div class="product__page__filter">
                                    <div class="product__pagination flex_center" style="text-align: inherit; display: flex;flex-direction: row-reverse;">
                                        <a id="openForm" class="current_page btn">
                                            <i class="fa-solid fa-filter"></i>
                                        </a>
                                        <a class="current_page btn" id="current_page">
                                            <i class="fa-solid fa-list"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        @include('pages.home.listGroup')
                    </div>
                </div>
                <div class="product__pagination">
                    {!! $bookstory->onEachSide(0)->links('pagination::default') !!}
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                <div class="product__sidebar">
                    @include('pages.home.sidebarFollow')
                    @include('pages.home.sidebarView')
                    @include('pages.home.sidebarComment')
                </div>
            </div>
        </div>
    </div>
@endsection
