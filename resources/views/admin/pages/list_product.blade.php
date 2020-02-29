@extends('admin.pages.master')
@section('title','Danh sách sản phẩm')
@section('main')
<div id="main-content-wp" class="list-product-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_cat" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Danh sách sản phẩm</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        @include('admin.pages.sidebar')
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    @include('errors.note')
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                   
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Mã sản phẩm</span></td>
                                    <td><span class="thead-text">Hình ảnh</span></td>
                                    <td><span class="thead-text">Tên sản phẩm</span></td>
                                    <td><span class="thead-text">Giá</span></td>
                                    <td><span class="thead-text">Giá sale</span></td>
                                    <td><span class="thead-text">Danh mục</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($listprod as $lp)
                                <?php $i++; ?>
                                <tr>
                                    
                                    <td><span class="tbody-text">{{$i}}</h3></span>
                                    <td><span class="tbody-text">{{$lp->prod_code}}</h3></span>
                                    <td>
                                        <div class="tbody-thumb">
                                            <img src="public/uploads/product/{{$lp->prod_image}}" alt="">
                                        </div>
                                    </td>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="product/{{$lp->prod_id}}" title="">{{$lp->prod_name}}</a>
                                        </div>
                                        <ul class="list-operation fl-right">
                                            <li><a href="admin/product/edit/{{$lp->prod_id}}" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                            <li><a href="admin/product/delete/{{$lp->prod_id}}" onclick="return confirm('Bạn có chắc muốn xóa?');" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </td>
                                    <td><span class="tbody-text">{{$lp->prod_price}}</span></td>
                                    <td><span class="tbody-text">{{$lp->prod_sale}}</span></td>
                                    <td><span class="tbody-text">{{$lp->prod_category}}</span></td>
                                    <td><span class="tbody-text">{{$lp->created_at}}</span></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection