@push('css')
    <style type="text/css">
        .hero__slider .hero__items p{
            max-width: 100%;
            width: 100%;
            max-height: 30px;
            overflow: hidden;
        }
        .hero__slider .hero__items h2{
            max-width: calc(100% - 120px);
            width: 100%;
            max-height: 55px;
            overflow: hidden;
            z-index: 2;
        }
        .hero__slider .hero__items.set-bg {
            background-repeat: no-repeat;
            background-size: cover;
            background-position: top right;
        }
        .hero__slider .hero__items .bg_filter{
            background-color: #293158;
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            min-width: -webkit-fill-available;
            opacity: .8;
        }

        .hero__slider .hero__items .bg_img{
            top: 60px;
            right: 140px;
            width: 230px;
            height: 325px;
            position: absolute;
            z-index: 1;
        }
        .hero__items {
            padding: 250px 50px 42px 50px;
        }
        .hero__text a span, .hero__text a i {
            background-color: #6C74FC;
        }
    </style>
@endpush
<div class="container">
    <div class="hero__slider owl-carousel">
        @foreach ($slide as $key => $value)
            <div class="hero__items set-bg" data-setbg="{{ Voyager::image($value->image) }}" style="background-image: url('{{ Voyager::image($value->image) }}');">
                <img class="bg_img" src="{{ Voyager::image($value->image) }}" alt="">
                <div class="bg_filter row">
                    <div class="col-xl-12">
                        <div class="hero__text">
                            {{-- <div class="label">Adventure</div> --}}
                            <h2>
                                {{ $value->title }}
                            </h2>
                            <p>
                                {!! $value->body !!}
                            </p>
                            <a href="{{ route('bookstory', [$value->slug]) }}">
                                <span>ĐỌC NGAY</span>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
