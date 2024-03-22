@push('css')
    <style type="text/css">
        .hero__text h2 {
            line-height: 60px;
        }
        .hero__slider .hero__items p{
            max-width: 100%;
            width: 100%;
            max-height: 30px;
            overflow: hidden;
        }
        .hero__slider .hero__items h2{
            max-width: calc(100%);
            width: 100%;
            overflow: hidden;
            margin-bottom: 12px;
            height: 60px;
            z-index: 2;
            text-shadow: 0 0 0.2em #87F, 0 0 0.2em #87F, 0 0 0.2em #87F
        }
        .hero__slider .hero__items.set-bg {
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
        }
        .hero__slider .hero__items .bg_filter{
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
            min-width: -webkit-fill-available;
            padding: 10px 0 10px 0;
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
        .hero__text .label {
            color: #fff;
            background-color: #6C74FC;
            border-radius: 4px;
            margin-bottom: 4px;
        }
        .hero__text .category_box {
            width: calc(100% - 60px);
            overflow: hidden;
            height: 30px;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            filter: blur(10px);
            backdrop-filter: blur(10px);
        }
        @media only screen and (max-width: 575.98px) {
            .hero__slider .hero__items .bg_img {
                display: none;
            }
            .overlay {
                filter: blur(0px);
                backdrop-filter: blur(5px);
            }
        }
        @media only screen and (max-width: 767px) {
            .hero__slider .hero__items .bg_img {
                display: none;
            }
            .overlay {
                filter: blur(0px);
                backdrop-filter: blur(5px);
            }
        }
        @media only screen and (min-width: 768px) and (max-width: 992px) {
            .hero__slider .hero__items .bg_img {
                right: 52px;
            }
        }
        @media only screen and (min-width: 992px) and (max-width: 1199px) {
            .hero__slider .hero__items .bg_img {
                right: 80px;
            }
        }
    </style>
@endpush
<div class="container">
    <div class="hero__slider owl-carousel">
        @foreach ($slide as $key => $value)
            <div class="hero__items set-bg" data-setbg="{{ Voyager::image($value->image) }}" style="background-image: url('{{ Voyager::image($value->image) }}');">
                <div class="overlay"></div>
                <img class="bg_img" src="{{ Voyager::image($value->image) }}" alt="">
                <div class="bg_filter row">
                    <div class="col-xl-9 col-lg-8 col-md-7 col-sm-12 col-12">
                        <div class="hero__text">
                            <div class="category_box">
                                @foreach ($value->pivote_bookstory_category as $key => $list)
                                    <div class="label">
                                        {{ $list->title }}
                                    </div>
                                @endforeach
                            </div>
                            <h2>
                                {{ $value->title }}
                            </h2>
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
