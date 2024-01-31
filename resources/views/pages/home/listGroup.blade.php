<div class="product__item">
    <div class="product__item__pic set-bg" data-setbg="{{ Voyager::image($value->image) }}" style="background-image: url('{{ Voyager::image($value->image) }}');">
        <a href="{{ route('bookstory', [$value->slug]) }}"><img class="product__item__pic"></a>
        @if ($value->featured)
            <img class="hot_tags" src="{{ asset('img/hot_tags.png') }}">
        @endif
        <div class="ep">
            <a href="#">
                Đang đọc 100
            </a>
        </div>
        <div class="background_option">
            <div class="option_view">
                <i class="fa fa-eye"></i>
                11
            </div>
            <div class="option_follow">
                <i class="fa fa-bookmark"></i>
                {{ $value->follow }}
            </div>
        </div>
    </div>
    <div class="product__item__text text_capitalize">
        <h5>
            <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug]) }}">
                {{ $value->title }}
            </a>
        </h5>
    </div>
    @if ($value->chapter_title)
        <div class="justify-content-between align-items-center mt-3 product__item__lastchapter">
            <div class="btn-group">
                <small class="text-muted">
                    <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{ route('chapter', [$value->slug, $value->chapter_slug]) }}">
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
