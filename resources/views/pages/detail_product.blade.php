@extends('inc.index')
@section('title',$detail_prod->prod_name)
@section('content')
<div id="main-content-wp" class="detail-product-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left"> 
                {{$detail_prod->category->cate_title}}
                </h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="/" title="">Trang chủ</a>
                    </li>
                    <li>
                     <a href="{{ asset('') }}{{$detail_prod->category->cate_slug}}&{{$detail_prod->category->cate_id}}" title="">{{$detail_prod->category->cate_title}}</a>
                 </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div id="content" class="fl-left">
            <div class="section" id="info-product-wp">
                <div class="section-detail clearfix">
                    <div class="thumb fl-left">
                        <img src="/public/uploads/product/{{$detail_prod->prod_image}}" data-zoom-image="public/images/img-detail-l.png"/>
                    </div>
                    <div class="thumb-respon fl-left">
                        <img src="/public/uploads/product/{{$detail_prod->prod_image}}">
                    </div>
                    <div class="info fl-right">
                        @csrf
                        <input type="hidden" id="prod_id" value="{{$detail_prod->prod_id}}">
                        <h3 id="product-name">{{$detail_prod->prod_name}}</h3>
                        <span id="product-code">Mã sản phẩm: {{$detail_prod->prod_code}}</span>
                        <div class="price">
                            <span class="price-old">{{number_format($detail_prod->prod_sale,0,',','.')}} VNĐ</span>
                            <span class="price-new">{{number_format($detail_prod->prod_price,0,',','.')}}</span>
                        </div>
                        <p id="desc-short">{!! $detail_prod->prod_description !!}</p>
                        <div id="num-order-wp">
                            <span class="title">Số lượng: 9999</span>
                            <input type="number" name="num-order" value="1" id="num-order">
                        </div>
                        <input type="hidden" value="@if(Auth::check()){{Auth::user()->name}}@endif" id="auth">
                        <input type="button" id="add-to-cart" value="Thêm giỏ hàng">
                        <input type="text" id="add-success" style="width: 150px; height: 45px; background: silver; padding: 5px; display: none;" value="Đã thêm vào giỏ hàng !">
                        <a href="{{ asset('') }}cart/add/{{$detail_prod->prod_id}}" title="" id="buy-now">Mua ngay</a><br/>
                    </div>
                </div>
            </div>
            <div class="section" id="detail-product-wp">
                <div class="section-detail">
                    <div id="tab-wrapper">
                        <ul id="tab-menu" class="clearfix">
                            <li>
                                <a href="#detail-product" title="">Thông tin sản phẩm</a>
                            </li>
                            <li>
                                <a href="#comment-product" title="">Bình luận</a>
                            </li>
                        </ul>
                        <div id="tab-content">
                            <div id="detail-product" class="tabItem">
                               {!! $detail_prod->prod_detail !!}
                            </div>
                            @if(Auth::check())
                            <div id="comment-product" class="tabItem" style="background: #b2bec3; border-radius: 10px;">
                                <div id="listcomment" style=" height: 400px; overflow-y: auto; padding: 20px; margin-bottom: 30px;">
                                    @foreach($listcomment as $lcm)
                                    <p style="margin-bottom: 5px;"><small style=" color: blue;">{{ $lcm->user->name }}</small> || <small>{{ $lcm->created_at }}</small></p>
                                    <p>{{ $lcm->com_content }}</p>
                                    <hr>
                                    @endforeach
                                    <div id="push-here"></div>
                                </div>
                                <div id="form-comment" style="padding: 20px;">
                                 <input type="text" id="txt-comment" placeholder="Hãy nhập gì đó" style="width: 400px; height: 35px; border-radius: 7px; padding: 5px; border: 1px solid blue; background: #c8d6e5" onkeypress="showbutton()" onkeyup="hidebutton(this.value)">
                                <input type="button" readonly="" id="btn-comment" value="Bình luận" style="border: 1px solid black; width: 80px; height: 35px; border-radius: 7px; background: #222f3e; color: white; display: none;">
                              </div>
                            </div>
                            @else
                            <div id="comment-product" class="tabItem">
                                <p>Bạn chưa đăng nhập ! vui lòng <a href="/signin">đăng nhập</a> để bình luận</p>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="section" id="same-category-wp">
                <div class="section-head">
                    <h3 class="section-title">Cùng chuyên mục</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @foreach($related_prod as $rd)
                        <?php $cate_slug = $rd->category->cate_slug; ?>
                        <li class="item">
                            <a href="/{{$cate_slug}}/{{$rd->prod_slug}}&{{$rd->prod_id}}.html" title="" class="thumb">
                                <img src="/public/uploads/product/{{$rd->prod_image}}" alt="">
                            </a>
                            <div class="info">
                                <a href="/{{$cate_slug}}/{{$rd->prod_slug}}&{{$rd->prod_id}}.html" title="" class="name-product">{{$rd->prod_name}}</a>
                                <div class="price-wp">
                                    <span class="new">{{ number_format($rd->prod_sale,0,',','.')}} vnđ</span>
                                    <span class="old">{{ number_format($rd->prod_price,0,',','.')}} </span>
                                </div>
                                <a href="/cart/add/{{$rd->prod_id}}" title="" class="buy-now">Mua ngay</a>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        <div id="sidebar" class="fl-right">
            <div class="section" id="category-wp">
                <div class="section-head">
                    <h3 class="section-title">Danh mục</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @foreach($category as $ct)
                        <li>
                            <a href="" title="">{{$ct->cate_title}}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="section" id="list-popular-wp">
                <div class="section-head">
                    <h1 class="section-title">Sản phẩm mới</h1>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @foreach($new_prod as $np)
                        <?php $cate_slug = $np->category->cate_slug; ?>
                        <li class="clearfix">
                            <a href="/{{$cate_slug}}/{{$np->prod_slug}}&{{$np->prod_id}}.html" title="" class="thumb fl-left">
                                <img src="/public/uploads/product/{{$np->prod_image}}" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="/{{$cate_slug}}/{{$np->prod_slug}}&{{$np->prod_id}}.html" title="" class="product-name">{{$np->prod_name}}</a>
                                <span class="fee">{{number_format($np->prod_sale,0,',','.')}} vnđ</span>
                                <a href="/{{$cate_slug}}/{{$np->prod_slug}}&{{$np->prod_id}}.html" title="" class="more">Xem chi tiết</a>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script>
    function showbutton() {
        $('#btn-comment').css('display', 'inline');
    }
    function hidebutton(value) {
        if(value==''){
            $('#btn-comment').css('display', 'none');
        }
    }
</script>
<script>
    $('#add-to-cart').click(function(event) {
        var auth = $('#auth').val();
        var prod_id = $('#prod_id').val();
        var num_order = $('#num-order').val();
        var _token = $('input[name="_token"]').val();
        if(auth!=''){
        $.ajax({
            url: '/cart/add',
            type: 'POST',
            dataType: 'JSON',
            data: 
            {
                _token: _token,
                prod_id:prod_id,
                num_order:num_order,
            },
        })
        .done(function() {
            console.log("success");
             $("#cart-wp").load(" #cart-wp > *");
             $('#add-to-cart').css('display', 'none');
             $('#add-success').css('display', 'inline');
             
        })
        .fail(function() {
            console.log("error");
        })
        .always(function() {
            console.log("complete");
        });
    }else{
      location.replace("http://vzshop.com:8080/signin");
    }
    });
</script>
<script>
    $('#btn-comment').click(function(event) {
     var _token = $('input[name="_token"]').val();   
     var content = $('#txt-comment').val();
     var userid = $('#userid').val();
     var prod_id = $('#prod_id').val();
     $.ajax({
         url: '/comment',
         type: 'POST',
         dataType: 'JSON',
         data: {
            _token:_token,
            userid:userid,
            content:content,
            prod_id:prod_id,
        },
     })
     .done(function() {
         console.log("success");
         $("#listcomment").load(" #listcomment > *");
         $('#txt-comment').val(''); 
     })
     .fail(function() {
         console.log("error");
     })
     .always(function() {
         console.log("complete");
     });
     
    });
</script>
@endsection