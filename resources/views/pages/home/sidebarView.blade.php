@push('css')
    <style type="text/css">
        .product__sidebar__view {
            margin-bottom: 35px;
        }
        .product__sidebar__view .product__sidebar__comment__item__text h5 {
            max-width: 100%;
            max-height: 50px;
            overflow: hidden;
        }
    </style>
@endpush
<div class="product__sidebar__view">
    <div class="section-title">
        <h5>Top Lượt xem</h5>
    </div>
    <ul class="filter__controls">
        <li class="active" data-filter="*">Ngày</li>
        <li data-filter=".week">Tuần</li>
        <li data-filter=".month">Tháng</li>
        <li data-filter=".years">Năm</li>
    </ul>
    <div class="filter__gallery background__fittel">
        <div class="product__sidebar__comment__item mix day">
            <div class="product__sidebar__comment__item__pic">
                <img src="{{ asset('img/sidebar/comment-1.jpg') }}" alt="">
            </div>
            <div class="product__sidebar__comment__item__text text_capitalize">
                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                <div class="justify-content-between align-items-center mb-1">
                    <div class="btn-group">
                        <small class="text-muted">
                            <a href="#">
                                Chapter mới: 100
                            </a>
                        </small>
                    </div>
                </div>
                <span style="float: right"><i class="fa fa-eye mt-6"></i> 19.141</span>
            </div>
        </div>
        <div class="product__sidebar__comment__item mix week">
            <div class="product__sidebar__comment__item__pic">
                <img src="{{ asset('img/sidebar/comment-2.jpg') }}" alt="">
            </div>
            <div class="product__sidebar__comment__item__text text_capitalize">
                <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
                <div class="justify-content-between align-items-center mb-1">
                    <div class="btn-group">
                        <small class="text-muted">
                            <a href="#">
                                Chapter mới: 100
                            </a>
                        </small>
                    </div>
                </div>
                <span style="float: right"><i class="fa fa-eye mt-6"></i> 19.141</span>
            </div>
        </div>
        <div class="product__sidebar__comment__item mix month">
            <div class="product__sidebar__comment__item__pic">
                <img src="{{ asset('img/sidebar/comment-3.jpg') }}" alt="">
            </div>
            <div class="product__sidebar__comment__item__text text_capitalize">
                <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                <div class="justify-content-between align-items-center mb-1">
                    <div class="btn-group">
                        <small class="text-muted">
                            <a href="#">
                                Chapter mới: 100
                            </a>
                        </small>
                    </div>
                </div>
                <span style="float: right"><i class="fa fa-eye mt-6"></i> 19.141</span>
            </div>
        </div>
        <div class="product__sidebar__comment__item mix years">
            <div class="product__sidebar__comment__item__pic">
                <img src="{{ asset('img/sidebar/comment-4.jpg') }}" alt="">
            </div>
            <div class="product__sidebar__comment__item__text text_capitalize">
                <h5><a href="#">Monogatari Series: Second Season</a></h5>
                <div class="justify-content-between align-items-center mb-1">
                    <div class="btn-group">
                        <small class="text-muted">
                            <a href="#">
                                Chapter mới: 100
                            </a>
                        </small>
                    </div>
                </div>
                <span style="float: right"><i class="fa fa-eye mt-6"></i> 19.141</span>
            </div>
        </div>
    </div>
</div>
