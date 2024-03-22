@extends('../layout')
@push('css')
    <style type="text/css">
        .breadcrumb__links a,
        .breadcrumb__links span {
            font-size: 20px;
            color: #ffffff;
        }
        .anime__details__form {
            margin-bottom: 55px;
        }
        .section-title h4:after, .section-title h5:after {
            background: #6C74FC;
        }
        .anime__details__form form button{
            background: #6C74FC;
        }
        .header {
            transition: transform 0.5s ease;
        }
        .footer-menu {
            position: fixed;
            bottom: 0;
            left: 0;
            width: -webkit-fill-available;
            padding: 15px calc(100% - 94%);
            transition: transform 0.5s ease;
            background-color: #151D35;
            box-shadow: 5px 5px 16px -4px #6c74fc;
            z-index: 1;
            display: flex;
            justify-content: space-between;
        }

        .footer-menu .btn_home {
            font-size: 20px;
        }

        .footer-menu .btn_error {
            font-size: 20px;
        }

        .footer-menu-control {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 80%;
        }

        .footer-menu .nice-select {
            border-radius: 150px;
            padding: 0 10px;
            margin: 0 3px;
            cursor: pointer;
            text-transform: capitalize;
            width: 140px;
            background-color: #2d334f;
            border: 0;
            color: #fff;
        }
        .footer-menu .footer-menu-control a {
            background-color: #6C74FC;
            color: #fff;
            border-radius: 150px;
            border: none;
            font-size: 18px;
            line-height: 28px;
            height: 40px;
            width: 40px;
            margin: 0 3px;
        }
        .header.hide {
            transform: translateY(-100%);
        }
        .footer-menu.hide {
            transform: translateY(100%);
        }
        .nice-select.open .list,
        .nice-select .list {
            width: -webkit-fill-available;
            background-color: #0C1121;
            overflow-y: auto;
            max-height: 400px;
        }
        .nice-select .option:hover, .nice-select .option.focus, .nice-select .option.selected.focus {
            background-color: #6C74FC;
        }
        .nice-select {
            background-color: #2A3254;
            color: #fff;
            border: none;
        }
        .nice-select:hover {
            border-color: #2A3254;
        }
        .nice-select .list {
            transform: scale(0.75) translateY(-100%);
        }
        .nice-select.open .list {
            transform: scale(1) translateY(-100%);
            top: -24%;
        }
        .isDisabled {
            color: currentColor;
            pointer-events: none;
            opacity: 0;
            text-decoration: none;
        }
        .post-meta {
            width: 88%;
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
        @media only screen and (max-width: 575.98px) {
            .chapter_title {
                font-size: 16px;
            }
        }
        @media (max-width: 992px) {
            .btn-text {
                display: none;
            }
        }
    </style>
@endpush
@section('content')
    @include('pages.chapter.overlay')
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="{{ route('home') }}"><i class="fa fa-home"></i> Truyện tranh</a>
                        <a href="{{ route('bookstory', [$bookstory->slug]) }}">{{ $bookstory->title }}</a>
                        <span>{{ $chapter->title_name }}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9 margin_auto">
                    <div class="text-center mb-5">
                        <h4 class="chapter_title text-white">{{$chapter->bookstory->title}} - {{$chapter->title_name}}</h4>
                    </div>
                    <div class="anime__video__player">
                        @php
                            $images = json_decode($chapter->media);
                        @endphp
                        @foreach ($images as $key => $value)
                            <img src="{{ Voyager::image($value) }}" style="width: 100%" page="{{ $key }}" alt="{{ $bookstory->title }} {{ $chapter->title_name }} trang {{ $key }}">
                        @endforeach
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    @include('pages.chapter.comment')
                </div>
            </div>
        </div>
    </section>
    <!-- Anime Section End -->

    <div class="footer-menu row">
        <a href="{{ route('home') }}" id="btn_home" class="btn btn_home text-white col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
            <i class="fa fa-home"></i>
            <span class="btn-text">Trang chủ</span>
        </a>
        <div class="footer-menu-control col-xl-8 col-lg-8 col-md-8 col-sm-8 col-8">
            <a class="btn {{$previous_chapter == null ? 'isDisabled' : ''}}" href="{{url('truyen-tranh/'.$bookstory->slug.'/'.$previous_chapter)}}"><i class="fa-solid fa-angle-left"></i></a>
            <select class="form-select mr-1 ml-1 select-chapter" name="select-chapter" aria-label="Default select example">
                @foreach ($all_chapter as $key => $value)
                    <option value="{{ route('chapter', [$bookstory->slug, $value->slug]) }}">{{ $value->title_name }}</option>
                @endforeach
            </select>
            <a class="btn {{$next_chapter == null ? 'isDisabled' : ''}}" href="{{url('truyen-tranh/'.$bookstory->slug.'/'.$next_chapter)}}"><i class="fa-solid fa-angle-right"></i></a>
        </div>
        <a id="openForm" class="btn btn_error text-white col-xl-2 col-lg-2 col-md-2 col-sm-2 col-2">
            <i class="fa-solid fa-triangle-exclamation"></i>
            <span class="btn-text">Báo lỗi</span>
        </a>
    </div>
@endsection

@push('js')
    <script type="text/javascript">
        var lastScrollTop = 0
        $(window).scroll(function() {
            var st = $(this).scrollTop()
            if (st > lastScrollTop) {
                // Đang cuộn xuống
                $(".footer-menu").addClass("hide")
                $(".header").addClass("hide")
            } else {
                // Đang cuộn lên
                $(".footer-menu").removeClass("hide")
                $(".header").removeClass("hide")
            }
            lastScrollTop = st
        })

        $(document).ready(function () {
            $('.select-chapter li').on('click', function () {
                var url = $(this).data('value')
                var current = $(this).text()
                if (url) {
                    window.location.href = url
                    current_text(current)
                }
            })

            current_chapter()

            function current_chapter() {
                var url = window.location.href
                $('.select-chapter').find('.option').removeClass('selected focus')
                var list = $('.select-chapter').find('.option[data-value="' + url + '"]').addClass('selected focus').text()
                current_text(list)
            }

            function current_text(e) {
                $('.select-chapter .current').text(e)
            }
        })
    </script>
@endpush
