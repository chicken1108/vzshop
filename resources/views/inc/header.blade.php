 <div id="site">
    <div id="container">
        <div id="header-wp">
            <div class="wp-inner clearfix">
                <a href="/" title="" id="logo" class="fl-left">
                    <img src="{!! asset('public/asset/images/logo.png') !!}" alt="">
                </a>
                <ul id="main-menu" class="fl-left">
                    <li>
                        <a href="/" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="/about.html" title="">Về chúng tôi</a>
                    </li>
                    <li>
                        <a href="" title="">Sản phẩm</a>
                        <ul class="sub-menu">
                            @foreach($category as $ct)
                            <li>
                                <a href="{!! asset('')!!}{{$ct->cate_slug}}&{{$ct->cate_id}}" title="">{{$ct->cate_title}}</a>
                            </li>
                            @endforeach
                        </ul>
                    </li>
                    <li>
                        <a href="/trend.html" title="">Xu huớng</a>
                    </li>
                    @if(Auth::check())
                    <input type="hidden" id="userid" value="{{Auth::user()->id}}">
                    <input type="hidden" id="username" value="{{Auth::user()->name}}">
                    <li>
                        <a href="/user" >{{Auth::user()->name}}</a>
                    </li>
                       @if(Auth::user()->level==1)
                        <li>
                        <a href="/admin" >ADMIN</a>
                        </li>
                        @endif
                    @else
                    <li>
                        <a href="/signin.html" title="">Đăng nhập</a>
                    </li>
                    <li>
                        <a href="/signup.html" title="">Đăng ký</a>
                    </li>
                    @endif
                </ul>
                <div id="action-wp" class="fl-right">
                    <div id="search-wp" class="fl-left">
                        <button type="button" class="btn" data-toggle="modal" data-target="#form-search-wp">
                            <i class="fa fa-search"></i>
                        </button>
                        <div class="modal fade" id="form-search-wp" tabindex="-1" role="dialog" aria-labelledby="lable">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <h1 class="title">Nhập từ khóa:</h1>
                                    <form id="form-s" action="{!! asset('search') !!}" method="get">
                                        <input type="text" name="key" id="key">
                                        <button type="submit" id="btn-s"><i class="fa fa-search"></i></button>
                                    </form>
                                    <div class="thumb">
                                        <img src="{!! asset('public/asset/images/bg-s.png') !!}" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="btn-respon" class="fl-right"><i class="fa fa-bars" aria-hidden="true"></i></div>
                    <div id="cart-wp" class="fl-right">
                        <a href="{{asset('cart')}}" title="" id="btn-cart">
                            <i class="fa fa-shopping-basket"></i>
                            @if(Auth::check())
                                <span id="num">{{Cart::session(Auth::user()->id)->getTotalQuantity()}}</span>
                            @else
                                <span id="num">0</span>
                            @endif
                        </a>
                    </div>
                </div>
            </div>
        </div>