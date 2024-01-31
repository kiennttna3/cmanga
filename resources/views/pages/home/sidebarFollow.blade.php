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
        .product__sidebar-comment .product__sidebar__comment__item__text h5 {
            max-width: 100%;
            max-height: 30px;
            overflow: hidden;
        }
    </style>
@endpush
@if (Session::get('login_publisher'))
    <div class="product__sidebar__comment product__sidebar-comment">
        <div class="section-title">
            <h5>Danh sách theo dõi</h5>
        </div>
        <div class="background__fittel">
            @foreach ($follow as $key => $value)
                <div class="product__sidebar__comment__item">
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
                                    <a href="#">
                                        <i class="fa-solid fa-location-dot"></i>
                                        Đang đọc 10
                                    </a>
                                </small>
                            </div>
                        </div>
                        @if ($value->chapter_title)
                            <div class="btn-group mt-4">
                                <small class="text-muted mt-4">
                                    <a title="{{ $value->title }} {{ $value->chapter_title }}" href="{{url('truyen-tranh/'.$value->slug.'/'.$value->chapter_slug)}}">
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
@endif
