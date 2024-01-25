<div class="anime__details__sidebar product__sidebar__comment">
    <div class="section-title">
        <h5>Cùng thể loại.</h5>
    </div>
    <div class="background__fittel">
        @foreach ($categoryTogether as $key => $value)
            <div class="product__sidebar__comment__item">
                <div class="product__sidebar__comment__item__pic">
                    <a href="{{ route('bookstory', [$value->slug]) }}">
                        <img src="{{ Voyager::image($value->image) }}" alt="">
                    </a>
                </div>
                <div class="product__sidebar__comment__item__text text_capitalize">
                    <h5><a href="{{ route('bookstory', [$value->slug]) }}">{{ $value->title }}</a></h5>
                    <div class="justify-content-between align-items-center mb-1">
                        <div class="btn-group">
                            <small class="text-muted">
                                <a class="text-white" href="#">
                                    Chapter mới: {{ $value->chapter_title ? $value->chapter_title : 0 }}
                                </a>
                                <i class="fa-solid fa-minus"></i>
                                <a class="text-white" href="#">
                                    Đang đọc: 10
                                </a>
                            </small>
                        </div>
                    </div>
                    @if ($value->chapter_created_at)
                        <span class="mt-4" style="float: right">
                            <i class="fa-regular fa-clock"></i>
                            {{ \Carbon\Carbon::parse($value->chapter_created_at)->diffForHumans() }}
                        </span>
                    @endif
                </div>
            </div>
        @endforeach
    </div>
</div>
