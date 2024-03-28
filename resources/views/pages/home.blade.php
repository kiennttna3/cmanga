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
        .grid_list {
            max-width: 100%;
            flex: 0 0 100%;
            margin-bottom: auto;
            height: 160px;
        }
        .grid_list .hot_tag {
            display: block;
            height: 18px !important;
            width: auto !important;
            margin-left: 5px;
            margin-bottom: -3px;
            display: inline;
        }
        .grid_list .product__item__pic {
            height: 130px;
            width: 90px;
            margin-right: 15px;
            z-index: 1;
        }
        .grid_list .product__item__pic .background_option {
            background-color: transparent;
            position: relative;
            opacity: 1;
            display: none;
        }
        .grid_list .product__item .background_option1 {
            flex-direction: row-reverse;
        }
        .grid_list .product__item {
            display: flex;
        }
        .grid_list .product__item__text {
            padding: 0;
            width: 86%;
            height: -webkit-fill-available;
        }
        .grid_list .product__item__lastchapter {
            width: -webkit-fill-available;
            padding-left: calc(100% - 86%);
            padding-right: calc(100% - 98%);
            bottom: 28px;
        }
        .grid_list .hot_tags {
            display: none;
        }
        .grid_list .hot_tag {
            height: 18px !important;
            width: auto !important;
            margin-left: 5px;
            margin-bottom: -3px;
            display: inline;
        }
        .grid_list .product__item .ep {
            display: none;
        }
        .grid_list .ep1 {
            font-size: 16px;
            color: #ffffff;
        }
        .grid_list .product__item__option {
            position: absolute;
            display: flex;
            width: -webkit-fill-available;
            padding-left: 108px;
            padding-right: 15px;
            bottom: 70px;
        }
        .grid_list .product__item .option_follow,
        .grid_list .product__item .option_view {
            padding: 0 0 0 10px;
        }
        .grid_list .fa-bookmark:before,
        .grid_list .fa-eye:before {
            color: #6C74FC;
        }
        .grid_list .product__item__text h6 {
            max-width: calc(100%);
            width: 100%;
            max-height: 42px;
            overflow: hidden;
        }
        .grid_list .product__item__text h6 a {
            font-size: 16px;
            line-height: 20px;
        }
        .grid_list .product__item .background_option1 {
            padding: 24px 0 0 0;
        }
        @media only screen and (min-width: 992px) and (max-width: 1199px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: calc(100% - 84%);
                padding-right: calc(100% - 98%);
            }
        }
        @media only screen and (min-width: 768px) and (max-width: 768px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: calc(100% - 85%) !important;
                padding-right: calc(100% - 98%) !important;
            }
        }
        @media only screen and (min-width: 576px) and (max-width: 768px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: calc(100% - 81%);
                padding-right: calc(100% - 97%);
            }
        }
        @media only screen and (min-width: 425px) and (max-width: 576px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 100px;
                padding-right: calc(100% - 97%);
            }
            .grid_list .product__item .background_option1 {
                padding: 22px 0 0 0;
            }

        }
        @media only screen and (min-width: 375px) and (max-width: 425px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 95px;
                padding-right: calc(100% - 97%);
            }
            .grid_list .product__item .background_option1 {
                padding: 22px 0 0 0;
            }
        }
        @media only screen and (min-width: 320px) and (max-width: 375px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 90px;
                padding-right: calc(100% - 97%);
            }
            .grid_list .product__item .background_option1 {
                padding: 22px 0 0 0;
            }
        }
        @media only screen and (max-width: 320px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 86px;
                padding-right: calc(100% - 97%);
            }
            .product__sidebar .section-title h5,
            .product__sidebar__comment__item__text h5 {
                font-size: 14px;
            }
            .grid_list .product__item .option_follow,
            .grid_list .product__item .option_view,
            .product__item__text ul li,
            .product__sidebar__comment__item__text h5,
            .grid_list .ep1,
            .text-muted {
                font-size: 12px;
            }
            .grid_list .product__item__text h6 a {
                font-size: 14px;
            }
            .grid_list .product__item__pic {
                height: 110px;
            }
            .product__pagination .pagination .active,
            .pagination_set.product__pagination a {
                width: 40px;
                height: 40px;
                line-height: 38px;
            }
            .grid_list .product__item .background_option1 {
                padding: 16px 0 0 0;
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
                                        Truyện Mới Cập Nhật
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
                        @foreach ($bookstory as $key => $value)
                            <div class="list_Group product__item col-xl-3 col-lg-4 col-md-4 col-sm-4 col-6">
                                @include('pages.home.listGroup')
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="pagination_set product__pagination">
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

@push('js')
    <script type="text/javascript">
        // Khi tất cả các phần tử trong DOM đã được tải xong
        document.addEventListener("DOMContentLoaded", function() {
            // Lấy tham chiếu đến phần tử
            var currentPage = document.getElementById("current_page")
            // Lấy tất cả các phần tử
            var listGroup = document.querySelectorAll(".list_Group")
            var isActive = false
            function Toggle() {
                currentPage.classList.toggle("actives")
                // Lặp qua tất cả các phần tử
                listGroup.forEach(function(e) {
                    e.classList.toggle("grid_list")
                })
                isActive = !isActive
                // Lưu trạng thái vào localStorage.
                localStorage.setItem("currentPageCheck", isActive ? "actives" : "")
            }
            // Sự kiện click
            currentPage.addEventListener("click", function() {
                Toggle()
            })
            // Khôi phục trạng thái từ localStorage khi trang được tải lại
            var currentPageCheck = localStorage.getItem("currentPageCheck")
            if (currentPageCheck === "actives") {
                Toggle()
            }
            window.addEventListener("resize", function() {
                if (!isActive && window.innerWidth < 768) {
                    Toggle()
                }
            })
        })
    </script>
@endpush
