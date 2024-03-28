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
        @media only screen and (max-width: 1199.98px) {
            .product__item .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
        @media only screen and (max-width: 991.98px) {
            .product__item .ep {
                font-size: 14px;
                padding: 6px 12px;
            }
        }
        @media only screen and (max-width: 767.98px) {
            .product__item .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
        @media only screen and (max-width: 575.98px) {
            .product__item .ep {
                font-size: 15px;
                padding: 6px 12px;
            }
        }
    </style>
@endpush
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
