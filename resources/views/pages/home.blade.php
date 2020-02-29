@extends('inc.index')
@section('title','VZshop')
@section('content')
<div id="main-content-wp" class="home-page">
    <div id="slider-wp">
        @foreach($listbanner as $lb)
        <div class="item" align="center">
            <img src="public/backend/banner/{{$lb->ban_image}}" alt="">
        </div>
        @endforeach
    </div>
    <div class="section" id="intro-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <p class="content fl-left">Free ship nội thành</p>
                        <div class="icon fl-right"><i class="fa fa-shopping-cart" aria-hidden="true"></i></div>
                    </li>
                    <li>
                        <p class="content fl-left">Tặng thẻ thành viên</p>
                        <div class="icon fl-right"><i class="fa fa-gift" aria-hidden="true"></i></i></div>
                    </li>
                    <li>
                        <p class="content fl-left">Giảm giá 25% cuối tuần</p>
                        <div class="icon fl-right"><i class="fa fa-paper-plane" aria-hidden="true"></i></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="product-discount-wp">
        <div class="wp-inner">
            <div class="section-head">
                <h3 class="section-title">Sản phẩm khuyến mại</h3>
            </div>
            <div class="section-detail">
                <ul class="list-item clearfix">
                    @foreach($prod_promotion as $pp)
                    <?php $cate_slug = $pp->category->cate_slug?>
                    <li>
                        <a href="/{{$cate_slug}}/{{$pp->prod_slug}}&{{$pp->prod_id}}.html" title="" class="thumb">
                            <img src="public/uploads/product/{{$pp->prod_image}}" alt="">
                        </a>
                        <div class="info">
                            <div class="discount-tag">-<?= round(100-($pp->prod_sale/$pp->prod_price)*100) ?>%</div>
                            <a href="/{{$cate_slug}}/{{$pp->prod_slug}}&{{$pp->prod_id}}.html" title="" class="name-product">{{$pp->prod_name}}</a>
                            <div class="price-wp">
                                <span class="new">{{number_format($pp->prod_sale,0,',','.')}} vnđ</span>
                                <span class="old">{{number_format($pp->prod_price,0,',','.')}}</span>
                            </div>
                            <a href="cart/add/{{$pp->prod_id}}" title="" class="buy-now">Mua ngay</a>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    @foreach($category as $ct)
    <div class="section" id="list-product-wp">
        <div class="wp-inner">
            <div class="section-head clearfix">
                <h3 class="section-title fl-left">{{$ct->cate_title}}</h3>
                <?php $list_prod_1 = $ct->product->where('prod_sale','>',0)->sortByDesc('created_at')->take(4); ?>
                <a href="{{$ct->cate_slug}}&{{$ct->cate_id}}" title="" class="see-more fl-right">Xem thêm</a>
            </div>
            <div class="section-detail">
                <ul class="list-item clearfix">
                    @foreach($list_prod_1 as $lp)
                    <?php $cate_slug = $lp->category->cate_slug; ?>
                    <li>
                        <a href="/{{$cate_slug}}/{{$lp->prod_slug}}&{{$lp->prod_id}}.html" title="" class="thumb">
                            <img src="public/uploads/product/{{$lp->prod_image}}" alt="">
                        </a>
                        <div class="info">
                            <a href="/{{$cate_slug}}/{{$lp->prod_slug}}&{{$lp->prod_id}}.html" title="" class="name-product">{{$lp->prod_name}}</a>
                            <div class="price-wp">
                                <span class="new">{{number_format($lp->prod_sale,0,',','.')}} vnđ</span>
                                <span class="old">{{number_format($lp->prod_price,0,',','.')}}</span>
                            </div>
                            <a href="cart/add/{{$lp->prod_id}}" title="" class="buy-now">Mua ngay</a>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    @endforeach
    <div class="section" id="blog-wp">
        <div class="wp-inner">
            <div class="section-head">
                <h3 class="section-title">Xu hướng</h3>
            </div>
            <div class="section-detail">
                <div id="blog-list">
                    <ul class="list-item">
                        @foreach($listtrend as $lt)
                        <li class="item">
                            <a href="/trend/{{$lt->trend_slug}}/{{$lt->trend_id}}.html" title="{{$lt->trend_title}}" class="thumb">
                                <img src="/public/uploads/trend/{{$lt->trend_image}}" alt="">
                            </a>
                            <a href="/trend/{{$lt->trend_slug}}/{{$lt->trend_id}}.html" title="{{$lt->trend_title}}" class="title">{{$lt->trend_title}}</a>
                            <p class="desc">{{$lt->trend_desc}}</p>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="section" id="promotion-wp">
        <div class="wp-inner">
            <div class="section-head">
                <h3 class="section-title">Đăng ký để nhận khuyến mại</h3>
                <p class="section-desc">Đăng ký để nhận được thông tin khuyến mại mới nhất</p>
            </div>
            <div class="section-detail">
             @csrf
             <input type="email" name="email" id="email" placeholder="Nhập email của bạn">
             <input type="submit" id="btn-submit" value="Đăng ký">
         </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    $('#btn-submit').click(function(){
        var email = $(this).prev('#email').val();
        if(email!=''){
        var _token = $('input[name="_token"]').val();
      $.ajax({
            url: '/addemail',
            type: 'POST',
            dataType: 'JSON',
            data: {
                _token:_token,
                email:email,
            },
        })
        .done(function() {
            console.log("success");
            alert('Đăng ký thành công !');
            $('#email').val('');
        })
        .fail(function() {
            console.log("error");
            alert('Email đã tồn tại')
        })
        .always(function() {
            console.log("complete");
        });  
    }else{
        alert('Bạn chưa nhập email !');
    }
      
    });
</script>
@endsection
