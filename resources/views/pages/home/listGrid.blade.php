@push('css')
    <style type="text/css">
        .list_grid {
            margin-bottom: 0;
        }
        .list_grid a {
            color: #fff;
        }
        .list_grid .hot_tags {
            height: 18px !important;
            width: auto !important;
            margin-left: 5px;
            margin-bottom: -3px;
            display: inline;
        }
        .list_grid .product__sidebar__comment__item {
            padding-top: 20px;
            border-top: 1px solid #151D35;
        }
        .list_grid img {
            border-radius: 5px;
            width: 90px;
            height: 130px;
        }
        .list_grid .product__sidebar__comment__item__text h5 a:hover {
            color: #6C74FC;
        }
        .list_grid .margin_auto {
            margin-left: auto;
            margin-right: auto;
        }
        .list_grid .background_option {
            color: #fff;
            float: right;
            font-size: 14px;
        }
        .list_grid
        .fa-location-dot:before, .fa-map-marker-alt:before,
        .fa-bookmark:before,
        .fa-eye:before {
            color: #6C74FC;
        }
        .list_grid .section-title h4:after, .section-title h5:after {
            background: #6C74FC;
        }
    </style>
@endpush
<div class="product__sidebar__comment__item">
    <div class="product__sidebar__comment__item__pic">
        <a href="{{ route('bookstory', [$value->slug_book]) }}">
            <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->title }}">
        </a>
    </div>
    <div class="product__sidebar__comment__item__text text_capitalize">
        <h5>
            <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}">
                {{ $value->title }}
                @if ($value->featured)
                    <img class="hot_tags" src="{{ asset('img/hot_tags_2.png') }}">
                @endif
            </a>
        </h5>
        <div class="justify-content-between align-items-center mb-1">
            <div class="btn-group">
                <small class="text-muted">
                    @if ($check)
                        @if ($value->title_name)
                            <a title="{{ $value->title }} {{ $value->title_name }}" href="{{ route('chapter', [$value->slug_book, $value->slug]) }}">
                                <i class="fa-solid fa-location-dot"></i>
                                {{ $value->title_name }}
                            </a>
                        @endif
                    @endif
                </small>
            </div>
            <div class="background_option mt-1">
                <div class="option_view">
                    <i class="fa fa-bookmark"></i>
                    11
                    <i class="fa fa-eye"></i>
                    9141
                </div>
            </div>
        </div>
        @if ($value->chapter_title)
            <div class="btn-group mt-4">
                <small class="text-muted mt-4">
                    <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{ route('chapter', [$value->slug_book, $value->chapter_slug]) }}">
                        {{ $value->chapter_title }}
                    </a>
                </small>
            </div>
            @if ($value->chapter_created_at)
                <span class="mt-5" style="float: right">
                    <i class="fa-regular fa-clock"></i>
                    {{ \Carbon\Carbon::parse($value->chapter_created_at)->diffForHumans() }}
                </span>
            @endif
        @endif
    </div>
</div>
