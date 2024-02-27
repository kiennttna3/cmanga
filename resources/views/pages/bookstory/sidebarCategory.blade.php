@push('css')
    <style type="text/css">
        a {
            color: #fff;
        }
        .product__sidebar__comment .a img {
            border-radius: 5px;
            width: 90px;
            height: 130px;
        }
        .fa-location-dot:before, .fa-map-marker-alt:before {
            color: #6C74FC;
        }
        .product__sidebar-comment .product__sidebar__comment__item__text h5 {
            max-width: 100%;
            max-height: 30px;
            overflow: hidden;
        }
    </style>
@endpush
<div class="anime__details__sidebar product__sidebar__comment">
    <div class="section-title">
        <h5>Cùng thể loại.</h5>
    </div>
    <div class="background__fittel">
        @foreach ($categoryTogether as $key => $value)
            <div class="product__sidebar__comment__item">
                <div class="product__sidebar__comment__item__pic">
                    <a class="a" href="{{ route('bookstory', [$value->slug_book]) }}">
                        <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->title }}">
                    </a>
                </div>
                <div class="product__sidebar__comment__item__text text_capitalize">
                    <h5>
                        <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}">
                            {{ $value->title }}
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
