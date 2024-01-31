@extends('../layout')
@section('slide')
@include('pages.slide')
@endsection

@push('css')
    <style type="text/css">
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
        .product__sidebar .section-title h5:after {
            background: #6C74FC;
        }
        .product__item .hot_tags {
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
        .background__fittel {
            background-color: #151D35;
            padding: 5px;
            border-top: 1px solid #6C74FC;
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
        /* .icon.item.disabled,
        .icon.item {
            opacity: 0;
        } */
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
    @include('pages.home.overlay')
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
                            <div class="list_Group product__item col-xl-4 col-lg-4 col-md-4 col-sm-6 col-xs-4 col-6">
                                @include('pages.home.listGroup')
                            </div>
                            <div class="list_grid product__sidebar__comment col-lg-12" style="display: none;">
                                @include('pages.home.listGrid')
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="product__pagination">
                    {!! $bookstory->onEachSide(0)->links('pagination::default') !!}
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
