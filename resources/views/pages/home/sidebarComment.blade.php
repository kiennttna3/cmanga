@push('css')
    <style type="text/css">
        .product__sidebar__comment .a img {
            border-radius: 5px;
            width: 90px;
            height: 130px;
        }
        .fa-location-dot:before, .fa-map-marker-alt:before {
            color: #6C74FC;
        }
        .product__sidebar__comment .product__sidebar__comment__item__text .product__sidebar__item__text a:hover {
            color: #6C74FC;
        }
        .comment_avatar {
            width: 60px;
            height: 60px;
            border-radius: 100%;
        }
        .product__sidebar__item__text {
            max-width: calc(100% - 80px);
            width: 100%;
            max-height: 30px;
            overflow: hidden;
        }
        .filter__comment {
            max-height: 1000px;
            overflow: auto;
        }
        .btn_group {
            width: -webkit-fill-available;
        }
        @media only screen and (max-width: 320px) {
            .filter__comment .product__sidebar__comment__item__text span {
                font-size: 10px;
                margin: 4px 0 0 0 !important;
            }
            .product__sidebar__item__text {
                max-width: calc(100% - 24%);
            }
        }
    </style>
@endpush
<div class="product__sidebar__comment">
    <div class="section-title">
        <h5>Bình luận mới</h5>
    </div>
    <div class="filter__comment background__fittel">
        @foreach ($viewComment as $key => $value)
            <div class="product__sidebar__comment__item">
                <div class="product__sidebar__comment__item__text">
                    <div class="justify-content-between align-items-center mb-1">
                        <div class="btn-group btn_group">
                            @if ($value->chapter_id)
                                <h5 class="product__sidebar__item__text text_capitalize">
                                    <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}">
                                        {{ $value->title }}
                                    </a>
                                </h5>
                                <small class="text-muted mt-1">
                                    <a title="{{ $value->title }} {{ $value->title_name }}" href="{{ route('chapter', [$value->slug_book, $value->slug]) }}">
                                        {{ $value->title_name }}
                                    </a>
                                </small>
                            @else
                                <h5 class="product__sidebar__item__text text_capitalize">
                                    <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}">
                                        {{ $value->title }}
                                    </a>
                                </h5>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="product__sidebar__comment__item__pic">
                    <a href="#">
                        <img class="comment_avatar" src="{{ Voyager::image($value->avatar) }}" alt="{{ $value->name }}">
                    </a>
                </div>
                <div class="product__sidebar__comment__item__text">
                    <div class="justify-content-between align-items-center mb-1">
                        <div class="btn-group">
                            <small class="text-muted">
                                <h6><a href="#">{{ $value->name }}</a></h6>
                            </small>
                        </div>
                        <span class="mt-1" data-time="{{ $value->created_at }}" style="float: right">
                            {{ \Carbon\Carbon::parse($value->created_at)->diffForHumans() }}
                        </span>
                    </div>
                    <small class="text-white">
                        {{ $value->body }}
                    </small>
                </div>
            </div>
            <hr>
        @endforeach
    </div>
</div>
