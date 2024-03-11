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
                        {{ $value->title_name }}
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
        <h5>
            <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug_book]) }}">
                {{ $value->title }}
            </a>
        </h5>
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
