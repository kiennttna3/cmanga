<div class="anime__details__form">
    <div class="section-title">
        <h5>
            <i class="fa-solid fa-comment"></i>
            Bình luận
        </h5>
    </div>
    <form id="myComment" method="POST" action="{{ route('postComment', [$bookstory->slug]) }}">
        @csrf
        <textarea class="form-control _ge_de_ol @error('body') is-invalid @enderror" name="body" rows="5" style="resize: none; border-radius: 20px" placeholder="Nội dung bình luận..." required autocomplete="body"></textarea>
        @error('body')
            <span class="invalid-feedback" role="alert">
                <strong>{{ $message }}</strong>
            </span>
        @enderror
        @if (Session::get('login_publisher'))
            <button type="submit">
                <i class="fa fa-location-arrow"></i>
                Gửi
            </button>
        @else
            <button type="button" onclick="checkComment()">
                <i class="fa fa-location-arrow"></i>
                Gửi
            </button>
        @endif
    </form>
</div>
<div class="anime__details__review">
    <div class="section-title">
        @php
            $count = count($count);
        @endphp
        <h5>
            <i class="fa-solid fa-comments"></i>
            {{ $count }}
            Bình luận
        </h5>
    </div>
    <div class="anime__details__review1">
        @foreach ($viewComment as $key => $value)
            <div class="anime__review__item">
                <div class="anime__review__item__pic">
                    <img src="{{ Voyager::image($value->avatar) }}" alt="{{ $value->name }}">
                </div>
                <div class="anime__review__item__text">
                    @if ($value->chapter_id)
                        <h6>
                            {{ $value->name }}
                            <i class="fa-solid fa-angle-right"></i>
                            <a title="{{ $bookstory->title }} {{ $value->title_name }}" class="text-black" href="{{ route('chapter', [$bookstory->slug, $value->slug]) }}">
                                {{ $value->title_name }}
                            </a>
                        </h6>
                    @else
                        <h6>
                            {{ $value->name }}
                        </h6>
                    @endif
                    <p>{{ $value->body }}</p>
                </div>
                <div class="post-meta mt-2 text-white">
                    <i class="fa-regular fa-clock"></i>
                    Trả lời -
                    <small class="text-muted" data-time="{{ $value->created_at }}">
                        {{ \Carbon\Carbon::parse($value->created_at)->diffForHumans() }}
                    </small>
                </div>
            </div>
        @endforeach
    </div>
</div>
<div class="product__pagination">
    {!! $viewComment->onEachSide(0)->links('pagination::default') !!}
</div>

@push('js')
    <script type="text/javascript">
        $(document).ready(function () {
            $('#myComment').submit(function (e) {
                e.preventDefault()
                $.ajax({
                    type: 'POST',
                    url: $(this).attr('action'),
                    data: $(this).serialize(),
                    dataType: 'json',
                    success: function (data) {
                        // Thêm comment mới vào giao diện
                        var comment = data.comment
                        var html =
                            '<div class="anime__review__item">' +
                                '<div class="anime__review__item__pic">' +
                                    '<img src="' + '{{ Voyager::image('/') }}' + comment.avatar + '" alt="">' +
                                '</div>' +
                                '<div class="anime__review__item__text">' +
                                    '<h6>' +
                                        comment.name +
                                    '</h6>' +
                                    '<p>' + comment.body + '</p>' +
                                '</div>' +
                                '<div class="post-meta mt-2 text-white">' +
                                    '<i class="fa-regular fa-clock"></i>' +
                                    'Trả lời - <small class="text-muted">' +
                                    '{{ \Carbon\Carbon::parse(' ')->diffForHumans() }}' + '</small>' +
                                '</div>' +
                            '</div>'

                        $('.anime__details__review1').prepend(html)

                        // Xóa nội dung trong textarea
                        $('textarea[name=body]').val('')
                    },
                    error: function (data) {
                        console.log('Error:', data)
                    }
                })
            })
        })

        let notyf
        function checkComment() {
            // Nếu không có thông báo nào hiển thị, tạo một instance mới
            if (!notyf) {
                notyf = new Notyf({
                    duration: 5000,
                    position: {
                        x: 'right',
                        y: 'bottom',
                    },
                    types: [
                        {
                            type: 'error',
                            background: 'indianred',
                            dismissible: true
                        }
                    ]
                })
            }
            // Hiển thị thông báo với độ trễ nhỏ để đảm bảo xếp chồng
            setTimeout(() => {
                notyf.error('Đăng nhập để sử dụng chức năng này!')
            }, 100)
        }
    </script>
@endpush
