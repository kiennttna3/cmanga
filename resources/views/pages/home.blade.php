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
            padding-left: 108px;
            padding-right: 15px;
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

@push('js')
    <script type="text/javascript">
        // Khi tất cả các phần tử trong DOM đã được tải xong
        document.addEventListener("DOMContentLoaded", function() {
            // Lấy tham chiếu đến phần tử
            var currentPage = document.getElementById("current_page")
            // Lấy tất cả các phần tử
            var listGroup = document.querySelectorAll(".list_Group")
            function Toggle() {
                currentPage.classList.toggle("actives")
                // Lặp qua tất cả các phần tử
                listGroup.forEach(function(e) {
                    e.classList.toggle("grid_list")
                })
                // Lưu trạng thái vào localStorage
                localStorage.setItem("currentPageCheck", currentPage.classList.contains("actives") ? "actives" : "")
            }
            function Mobile() {
                var mobile = window.innerWidth < 768
                if(mobile) {
                    Toggle()
                    localStorage.setItem('currentPage', currentPage)
                }
            }
            // Sự kiện click
            currentPage.addEventListener("click", function() {
                Toggle()
            })
            window.addEventListener('resize', function() {
                Mobile()
            })
            // Khôi phục trạng thái từ localStorage khi trang được tải lại
            var currentPageCheck = localStorage.getItem("currentPageCheck")
            if (currentPageCheck === "actives") {
                Toggle()
            }
            // Kiểm tra kích thước cửa sổ khi trang web được tải
            Mobile()
        })
    </script>
@endpush
