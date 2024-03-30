@push('css')
    <style type="text/css">
         .product__item .background_option {
            background-color: #293158;
            position: absolute;
            left: 0px;
            bottom: 0px;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            min-width: -webkit-fill-available;
            opacity: .9;
        }
        .product__item .option_view {
            font-size: 14px;
            color: #ffffff;
            display: inline-block;
            padding: 10px 10px;
        }
        .product__item .option_follow {
            font-size: 14px;
            color: #ffffff;
            display: inline-block;
            padding: 10px 10px;
        }
        .product__item .ep {
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
            bottom: 54px;
        }
        .product__item__pic {
            height: 250px;
        }
        .product__item .hot_tag {
            display: none;
        }
        .product__item .product__item__option {
            display: none;
        }
        .product__item__text h6 a {
            font-weight: 700;
            line-height: 26px;
        }
        .product__item__text h6 a:hover {
            color: #6C74FC;
        }
        .product__item__lastchapter {
            position: absolute;
            bottom: 0px;
            display: flex;
            width: 84%;
        }
        .product__item__text {
            padding-bottom: 10px;
        }
        .product__item .hot_tags {
            position: absolute;
            right: 10px;
            top: 10px;
            min-height: auto;
            width: auto;
            min-width: auto;
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
            padding-right: calc(100% - 97%);
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
            padding-left: calc(100% - 85%);
            padding-right: calc(100% - 97%);
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
                padding-right: calc(100% - 97%);
            }
            .product__item .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
        @media only screen and (min-width: 768px) and (max-width: 992px) {
            .product__item .ep {
                font-size: 14px;
                padding: 6px 12px;
            }
            .product__item__pic {
                height: 290px;
            }
        }
        @media only screen and (min-width: 768px) and (max-width: 768px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: calc(100% - 85%) !important;
                padding-right: calc(100% - 97%) !important;
            }
        }
        @media only screen and (min-width: 576px) and (max-width: 768px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: calc(100% - 81%);
                padding-right: calc(100% - 96%);
            }
            .product__item .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
        @media only screen and (min-width: 425px) and (max-width: 576px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 100px;
                padding-right: calc(100% - 95%);
            }
            .grid_list .product__item .background_option1 {
                padding: 22px 0 0 0;
            }
            .product__item .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
            .product__item__pic {
                height: 290px;
            }

        }
        @media only screen and (min-width: 375px) and (max-width: 425px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 95px;
                padding-right: calc(100% - 94%);
            }
            .grid_list .product__item .background_option1 {
                padding: 22px 0 0 0;
            }
        }
        @media only screen and (min-width: 320px) and (max-width: 375px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 90px;
                padding-right: calc(100% - 94%);
            }
            .grid_list .product__item .background_option1 {
                padding: 22px 0 0 0;
            }
        }
        @media only screen and (max-width: 320px) {
            .grid_list .product__item__lastchapter,
            .grid_list .product__item__option {
                padding-left: 86px;
                padding-right: calc(100% - 94%);
            }
            .grid_list .product__item .background_option1 {
                padding: 16px 0 0 0;
            }
            .grid_list .product__item__text h6 a {
                font-size: 14px;
            }
            .grid_list .product__item__pic {
                height: 110px;
            }
            .grid_list .product__item .option_follow,
            .grid_list .product__item .option_view,
            .product__item__text ul li,
            .grid_list .ep1 {
                font-size: 12px;
            }
        }
    </style>
@endpush
@foreach ($bookstory as $key => $value)
    <div class="list_Group product__item col-xl-3 col-lg-4 col-md-4 col-sm-4 col-6">
        <div class="product__item">
            <div class="product__item__pic set-bg" data-setbg="{{ Voyager::image($value->image) }}" style="background-image: url('{{ Voyager::image($value->image) }}');">
                <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}"><img class="product__item__pic"></a>
                @if ($value->featured)
                    <img class="hot_tags" src="{{ asset('img/hot_tags.png') }}">
                @endif
                @if ($check)
                    @if ($value->title_name)
                        <div class="ep">
                            <a title="{{ $value->title }} {{ $value->title_name }}" href="{{ route('chapter', [$value->slug_book, $value->slug]) }}">
                                <div class="title_name">
                                    Đang đọc {{ $value->title_name }}
                                </div>
                            </a>
                        </div>
                    @endif
                @endif
                <div class="background_option">
                    <div class="option_view">
                        <i class="fa fa-eye"></i>
                        {{ formatNumber($value->view) }}
                    </div>
                    <div class="option_follow">
                        <i class="fa fa-bookmark"></i>
                        {{ formatNumber($value->follow) }}
                    </div>
                </div>
            </div>
            <div class="product__item__text text_capitalize">
                <h6>
                    <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}">
                        {{ $value->title }}
                    </a>
                </h6>
                @if ($value->featured)
                    <img class="hot_tag" src="{{ asset('img/hot_tags.png') }}">
                @endif
            </div>
            <div class="product__item__option justify-content-between align-items-center">
                <div class="btn-group ep1">
                    @if ($check)
                        @if ($value->title_name)
                            <a title="{{ $value->title }} {{ $value->title_name }}" href="{{ route('chapter', [$value->slug_book, $value->slug]) }}">
                                <i class="fa-solid fa-location-dot"></i>
                                <div class="title_name">
                                    Đang đọc {{ $value->title_name }}
                                </div>
                            </a>
                        @endif
                    @endif
                </div>
                <div class="btn-group background_option1">
                    <div class="option_view">
                        <i class="fa fa-eye"></i>
                        {{ formatNumber($value->view) }}
                    </div>
                    <div class="option_follow">
                        <i class="fa fa-bookmark"></i>
                        {{ formatNumber($value->follow) }}
                    </div>
                </div>
            </div>
            @if ($value->chapter_title)
                <div class="justify-content-between align-items-center mt-3 product__item__lastchapter">
                    <div class="btn-group">
                        <small class="text-muted">
                            <a title="{{ $value->title_name }} {{ $value->chapter_title }}" href="{{ route('chapter', [$value->slug_book, $value->chapter_slug]) }}">
                                {{ $value->chapter_title }}
                            </a>
                        </small>
                    </div>
                    @if ($value->chapter_created_at)
                        <div class="btn-group">
                            <small class="text-muted" data-time="{{ $value->created_at }}">
                                {{ \Carbon\Carbon::parse($value->chapter_created_at)->diffForHumans() }}
                            </small>
                        </div>
                    @endif
                </div>
            @endif
            <div class="clear"></div>
        </div>
    </div>
@endforeach

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
