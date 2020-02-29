@extends('inc.index')
@section('title',$cate->cate_title)
@section('style')
<style>
    .pagination li{
        list-style: none;
        display: inline-block;
        margin-left: 5px;
    }

    .pagination .active{
      padding-top: 10px;
    }
    .pagination .disabled{
      padding-top: 10px;
    }
</style>
@section('content')
<div id="main-content-wp" class="category-product-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left">{{$cate->cate_title}}</h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="/" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="/{{$cate->cate_slug}}&{{$cate->cate_id}}" title=""> 
                           {{$cate->cate_title}}
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="filter-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <form method="POST" action="">
                            <select name="filter-price">
                                <option value="0">Lọc theo giá</option>
                                <option value="0">500.000đ - 2.000.000đ</option>
                                <option value="0">2.000.000đ - 5.000.000đ</option>
                                <option value="0">5.000.000đ - 10.000.000đ</option>
                                <option value="0">Trên 10.000.000đ</option>
                            </select>
                            <button type="submit" name="btn-filter-price" id="btn-filter-price">Lọc</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="list-product-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    @foreach($listprod as $lp)
                    <?php $cate_slug = $lp->category->cate_slug; ?>
                    <li>
                        <a href="{{$cate_slug}}/{{$lp->prod_slug}}&{{$lp->prod_id}}.html" title="" class="thumb">
                            <img src="/public/uploads/product/{{$lp->prod_image}}" alt="">
                        </a>
                        <div class="info">
                            <a href="{{$cate_slug}}/{{$lp->prod_slug}}&{{$lp->prod_id}}.html" title="" class="name-product">{{$lp->prod_name}}</a>
                            <div class="price-wp">
                                <span class="new">{{number_format($lp->prod_sale,0,',','.')}} vnđ</span>
                                <span class="old">{{number_format($lp->prod_price,0,',','.')}} vnđ</span>
                            </div>
                            <a href="cart/add/{{$lp->prod_id}}" title="" class="buy-now">Mua ngay</a>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="pagination-wp">
        <div class="wp-inner" align="center">
                {!! $listprod->links(); !!}                
        </div>
    </div>
</div>
@endsection