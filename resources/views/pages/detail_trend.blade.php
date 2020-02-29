@extends('inc.index')
@section('title',$detail_trend->trend_title)
@section('style')
<style>
    img{
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
</style>
@section('content')
<div id="main-content-wp" class="detail-news-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left">XU HƯỚNG</h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Xu hướng</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div id="content" class="fl-left">
            <div class="section" id="detail-news-wp">
                <div class="section-detail">
                    <h3 class="title">{{$detail_trend->trend_title}}</h3>
                    <span class="create-date">{{$detail_trend->updated_at}}</span>
                    <div class="detail">
                        {!! $detail_trend->trend_content !!}
                    </div>
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
                            <a href="/{{$ct->cate_slug}}&{{$ct->cate_id}}.html" title="">{{$ct->cate_title}}</a>
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
                       @foreach($newproduct as $np)
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
             <div class="section" id="list-popular-wp">
                <div class="section-head">
                    <h1 class="section-title">Xu hướng</h1>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                       @foreach($related_trend as $rt)
                        <li class="clearfix">
                            <a href="/trend/{{$rt->trend_slug}}/{{$rt->trend_id}}.html" title="" class="thumb fl-left">
                                <img src="/public/uploads/trend/{{$rt->trend_image}}" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="/trend/{{$rt->trend_slug}}/{{$rt->trend_id}}.html" title="" class="product-name">{{$rt->trend_title}}</a>
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