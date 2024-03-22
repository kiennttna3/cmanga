@push('css')
    <style type="text/css">
        .product__sidebar__view {
            margin-bottom: 35px;
        }
        .product__sidebar__view .product__sidebar__comment__item__text h5 {
            max-width: 100%;
            max-height: 30px;
            overflow: hidden;
        }
        .product__sidebar__view .a img {
            border-radius: 5px;
            width: 90px;
            height: 130px;
        }
    </style>
@endpush
<div class="product__sidebar__view">
    <div class="section-title">
        <h5>Top Lượt xem</h5>
    </div>
    <ul class="filter__controls">
        <li class="active" data-filter=".day">Ngày</li>
        <li data-filter=".week">Tuần</li>
        <li data-filter=".month">Tháng</li>
        <li data-filter=".years">Năm</li>
    </ul>
    <div class="filter__gallery background__fittel">
        @foreach ($viewDay as $key => $value)
            <div class="product__sidebar__comment__item mix day">
                <div class="product__sidebar__comment__item__pic">
                    <a class="a" href="{{ route('bookstory', [$value->slug]) }}">
                        <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->title }}">
                    </a>
                </div>
                <div class="product__sidebar__comment__item__text">
                    <h5 class="text_capitalize">
                        <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug]) }}">
                            {{ $value->title }}
                        </a>
                    </h5>
                    <div class="justify-content-between align-items-center mb-1">
                        <div class="btn-group">
                            <small class="text-muted">
                                <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{url('truyen-tranh/'.$value->slug_book.'/'.$value->chapter_slug)}}">
                                    <div class="title_name">
                                        Chap mới: {{ $value->chapter_title }}
                                    </div>
                                </a>
                            </small>
                        </div>
                    </div>
                    <span class="mt-5" style="float: right">
                        <i class="fa fa-eye"></i>
                        {{ $value->total_view }}
                    </span>
                </div>
            </div>
        @endforeach
        @foreach ($viewWeek as $key => $value)
            <div class="product__sidebar__comment__item mix week">
                <div class="product__sidebar__comment__item__pic">
                    <a class="a" href="{{ route('bookstory', [$value->slug]) }}">
                        <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->title }}">
                    </a>
                </div>
                <div class="product__sidebar__comment__item__text text_capitalize">
                    <h5>
                        <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug]) }}">
                            {{ $value->title }}
                        </a>
                    </h5>
                    <div class="justify-content-between align-items-center mb-1">
                        <div class="btn-group">
                            <small class="text-muted">
                                <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{url('truyen-tranh/'.$value->slug_book.'/'.$value->chapter_slug)}}">
                                    {{ $value->chapter_title }}
                                </a>
                            </small>
                        </div>
                    </div>
                    <span class="mt-5" style="float: right">
                        <i class="fa fa-eye"></i>
                        {{ $value->total_view }}
                    </span>
                </div>
            </div>
        @endforeach
        @foreach ($viewMonth as $key => $value)
            <div class="product__sidebar__comment__item mix month">
                <div class="product__sidebar__comment__item__pic">
                    <a class="a" href="{{ route('bookstory', [$value->slug]) }}">
                        <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->title }}">
                    </a>
                </div>
                <div class="product__sidebar__comment__item__text text_capitalize">
                    <h5>
                        <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug]) }}">
                            {{ $value->title }}
                        </a>
                    </h5>
                    <div class="justify-content-between align-items-center mb-1">
                        <div class="btn-group">
                            <small class="text-muted">
                                <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{url('truyen-tranh/'.$value->slug_book.'/'.$value->chapter_slug)}}">
                                    {{ $value->chapter_title }}
                                </a>
                            </small>
                        </div>
                    </div>
                    <span class="mt-5" style="float: right">
                        <i class="fa fa-eye"></i>
                        {{ $value->total_view }}
                    </span>
                </div>
            </div>
        @endforeach
        @foreach ($viewYear as $key => $value)
        <div class="product__sidebar__comment__item mix years">
            <div class="product__sidebar__comment__item__pic">
                <a class="a" href="{{ route('bookstory', [$value->slug]) }}">
                    <img src="{{ Voyager::image($value->image) }}" alt="{{ $value->title }}">
                </a>
            </div>
            <div class="product__sidebar__comment__item__text text_capitalize">
                <h5>
                    <a title="{{ $value->title }}" href="{{ route('bookstory', [$value->slug]) }}">
                        {{ $value->title }}
                    </a>
                </h5>
                <div class="justify-content-between align-items-center mb-1">
                    <div class="btn-group">
                        <small class="text-muted">
                            <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{url('truyen-tranh/'.$value->slug_book.'/'.$value->chapter_slug)}}">
                                {{ $value->chapter_title }}
                            </a>
                        </small>
                    </div>
                </div>
                <span class="mt-5" style="float: right">
                    <i class="fa fa-eye"></i>
                    {{ $value->total_view }}
                </span>
            </div>
        </div>
    @endforeach
    </div>
</div>
