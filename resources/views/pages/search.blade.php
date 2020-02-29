@extends('inc.index')
@section('title','Tìm kiếm')
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
                <h3 class="title fl-left">Kết quả tìm kiếm với từ khóa: {{$key}}</h3>
            </div>
        </div>
    </div>
<br>
    <div class="section" id="list-product-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    @foreach($result as $value)
                    <?php $cate_slug = $value->category->cate_slug; ?>
                    <li>
                        <a href="{{$cate_slug}}/{{$value->prod_slug}}&{{$value->prod_id}}.html" title="" class="thumb">
                            <img src="/public/uploads/product/{{$value->prod_image}}" alt="">
                        </a>
                        <div class="info">
                            <a href="{{$cate_slug}}/{{$value->prod_slug}}&{{$value->prod_id}}.html" title="" class="name-product">{{$value->prod_name}}</a>
                            <div class="price-wp">
                                <span class="new">{{number_format($value->prod_sale,0,',','.')}} vnđ</span>
                                <span class="old">{{number_format($value->prod_price,0,',','.')}} vnđ</span>
                            </div>
                            <a href="cart/add/{{$value->prod_id}}" title="" class="buy-now">Mua ngay</a>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    <div class="section" id="pagination-wp">
        <div class="wp-inner" align="center">
                {!! $result->links(); !!}                
        </div>
    </div>
</div>
@endsection