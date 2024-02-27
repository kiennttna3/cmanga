@extends('../layout')

@push('css')
    <style type="text/css">
        a {
            color: #fff;
        }
        .hot_tags {
            height: 18px !important;
            width: auto !important;
            margin-left: 5px;
            margin-bottom: -3px;
            display: inline;
        }
        .product__page__title {
            border-bottom:  none;
        }
        .product__sidebar__comment__item {
            padding-top: 20px;
            border-top: 1px solid #151D35;
        }
        .product__sidebar__comment img {
            border-radius: 5px;
            width: 90px;
            height: 130px;
        }
        .product__sidebar__comment__item__text h5 a:hover {
            color: #6C74FC;
        }
        .margin_auto {
            margin-left: auto;
            margin-right: auto;
        }
        .product__sidebar__comment .background_option {
            color: #fff;
            float: right;
            font-size: 14px;
        }
        .fa-location-dot:before, .fa-map-marker-alt:before,
        .fa-bookmark:before,
        .fa-eye:before {
            color: #6C74FC;
        }
        .section-title h4:after, .section-title h5:after {
            background: #6C74FC;
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
    </style>
@endpush

@section('content')
    @php
        $count = count($count)
    @endphp
    <div class="container">
        <div class="row">
            <div class="margin_auto col-lg-9">
                <div class="product__page__content">
                    <div class="product__page__title">
                        <div class="row">
                            <div class="col-lg-9 col-md-8 col-sm-10 col-xs-6 col-12">
                                <div class="section-title mb-2">
                                    <h5>
                                        Danh sách truyện đã theo dõi ({{ $count }})
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="product__sidebar__comment col-lg-12">
                            <div class="background__fittel">
                                @foreach ($bookstory as $key => $value)
                                    <div class="product__sidebar__comment__item">
                                        <div class="product__sidebar__comment__item__pic">
                                            <a href="{{ route('bookstory', [$value->slug]) }}">
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
                                                        @if ($value->title_name)
                                                            <a title="{{ $value->title }} {{ $value->title_name }}" href="{{ route('chapter', [$value->slug_book, $value->slug]) }}">
                                                                <i class="fa-solid fa-location-dot"></i>
                                                                {{ $value->title_name }}
                                                            </a>
                                                        @endif
                                                    </small>
                                                </div>
                                                <div class="background_option mt-1">
                                                    <div class="option_view">
                                                        <i class="fa fa-bookmark"></i>
                                                        {{ $value->follow }}
                                                        <i class="fa fa-eye"></i>
                                                        {{ $value->view }}
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
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product__pagination">
                    {!! $bookstory->onEachSide(0)->links('pagination::default') !!}
                </div>
            </div>
        </div>
    </div>
@endsection
