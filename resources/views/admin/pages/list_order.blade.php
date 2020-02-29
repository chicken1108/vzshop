@extends('admin.pages.master')
@section('title','Đơn hàng')
@section('main')
<div id="main-content-wp" class="list-product-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_cat" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Đơn hàng</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        @include('admin.pages.sidebar')
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Mã đơn hàng</span></td>
                                    <td><span class="thead-text">Họ và tên</span></td>
                                    <td><span class="thead-text">Tổng giá</span></td>
                                    <td><span class="thead-text">Trạng thái</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($list_order as $lord)
                                <?php $i++; ?>
                                <tr>
                                    
                                    <td><span class="tbody-text">{{$i}}</h3></span>
                                    <td><span class="tbody-text">{{$lord->ord_id}}</h3></span>
                                    <input type="hidden" value="{{$lord->ord_id}}" class="ord_id">
                                    <td>
                                        <div class="tb-title fl-left">
                                            <a href="" title="">{{$lord->ord_name}}</a>
                                        </div>
                                        <ul class="list-operation fl-right">
                                            <li><a href="admin/order/edit/{{$lord->ord_id}}" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                            <li><a href="admin/order/delete/{{$lord->ord_id}}" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </td>
                                    <td><span class="tbody-text">{{$lord->ord_total_price}}</span></td>
                                    <td><span class="tbody-text">{{$lord->ord_status}}</span></td>
                                    <td><span class="tbody-text">{{$lord->created_at}}</span></td>
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
@section('script')
<script>
    
</script>
@endsection