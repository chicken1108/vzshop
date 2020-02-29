@extends('inc.index')
@section('title','Giỏ hàng')
@section('content')
<div id="main-content-wp" class="cart-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left">Giỏ hàng</h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Giỏ hàng</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    @if(count($content)>=1)
    <div id="wrapper" class="wp-inner clearfix">
        <div class="section" id="info-cart-wp">
            <div class="section-detail table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <td>Mã sản phẩm</td>
                            <td>Ảnh sản phẩm</td>
                            <td>Tên sản phẩm</td>
                            <td>Giá sản phẩm</td>
                            <td>Số lượng</td>
                            <td colspan="2">Thành tiền</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($content as $ct)
                        <tr>
                            @csrf
                            <td>{{$ct->attributes->code}}</td>
                            <td>
                                <a href="" title="" class="thumb">
                                    <img src="public/uploads/product/{{$ct->attributes->image}}" alt="">
                                </a>
                            </td>
                            <td>
                                <a href="" title="" class="name-product">{{$ct->name}}</a>
                            </td>
                            <td>{{number_format($ct->price,0,',','.')}} vnđ</td>
                            <td>
                                <input type="number" name="num-order" value="{{$ct->quantity}}" onchange="updateCart(this.value,'{{$ct->id}}')" class="num-order">
                            </td>
                            <td>{{number_format($ct->price*$ct->quantity,0,',','.')}} vnđ<td>
                            <td>
                                <a href="cart/delete/{{$ct->id}}" title="" class="del-product"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <p id="total-price" class="fl-right">Tổng giá: {{number_format($total,0,',','.')}} <span>vnđ</span></p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <div class="fl-right">
                                        <a href="cart/checkout" title="" id="checkout-cart">Thanh toán</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <div class="section" id="action-cart-wp">
            <div class="section-detail">
                <p class="title">Click vào <span>“Cập nhật giỏ hàng”</span> để cập nhật số lượng. Nhập vào số lượng <span>0</span> để xóa sản phẩm khỏi giỏ hàng. Nhấn vào thanh toán để hoàn tất mua hàng.</p>
                <a href="/" title="" id="buy-more">Mua tiếp</a><br/>
                <a href="cart/destroy" title="" id="delete-cart">Xóa giỏ hàng</a>
            </div>
        </div>
    </div>
    @else()
    <div align="center" style="margin-top: 100px; margin-bottom: 100px;">
        <p>Giỏ hàng trống! <a href="/">mua hàng</a></p>
    </div>
    @endif
</div>
@endsection
@section('script')
<script>
    function updateCart(qty, id) {
        var _token = $('input[name="_token"]').val();
        $.ajax({
            url: 'cart/update',
            type: 'POST',
            dataType: 'JSON',
            data: {
                _token:_token,
                qty: qty,
                id: id,
            },
        })
        .done(function() {
            console.log("success");
        })
        .fail(function() {
            console.log("error");
        })
        .always(function() {
            console.log("complete");
            location.reload();
        });  
    }
</script>
@endsection