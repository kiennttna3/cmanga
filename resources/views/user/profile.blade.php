@extends('../layout')
@section('content')
    <style>
        .blog-details {
            padding-top: 0px;
        }
        .site-btn {
            float: right;
        }
    </style>
    <div style="background-size:cover; background-image: url({{ asset('img/background/background.png') }}); background-position: center center;position:absolute; top:0; left:0; width:100%; height:300px;margin-top: 66px;"></div>
    <div style="height:112px; display:block; width:100%"></div>
    <div style="position:relative; z-index:9; text-align:center;">
        <img src="@if( !filter_var(Auth::user()->avatar, FILTER_VALIDATE_URL)){{ Voyager::image( Auth::user()->avatar ) }}@else{{ Auth::user()->avatar }}@endif"
            class="avatar"
            style="border-radius:50%; width:150px; height:150px; border:5px solid #fff;margin-left: auto; margin-right: auto;"
            alt="{{ Auth::user()->name }} avatar">
        <h4>{{ ucwords(Auth::user()->name) }}</h4>
        <div class="user-email text-muted">{{ ucwords(Auth::user()->email) }}</div>
        <p>{{ Auth::user()->bio }}</p>
    </div>
     <!-- Blog Details Section Begin -->
     <section class="blog-details spad">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-6">
                    <div class="blog__details__content">
                        <div class="blog__details__form">
                            <h4>Leave A Commnet</h4>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" placeholder="Name">
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <input type="text" placeholder="Email">
                                    </div>
                                    <div class="col-lg-12">
                                        <textarea placeholder="Message"></textarea>
                                        <button type="submit" class="site-btn">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->
@endsection
