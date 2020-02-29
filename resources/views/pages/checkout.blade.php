@extends('inc.index')
@section('title','Thanh toán')
@section('content')
<div id="main-content-wp" class="checkout-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left">Thanh toán</h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="/cart/checkout" title="">Thanh toán</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div class="section" id="customer-info-wp">
            <div class="section-head">
                <h1 class="section-title">Thông tin khách hàng</h1>
            </div>
            @include('errors.note')
            <div class="section-detail">
                <form method="POST" action="" id="form-checkout">
                    @csrf
                    <div class="form-row clearfix">
                        <div class="form-col fl-left">
                            <label for="fullname">Họ tên</label>
                            <input type="text" name="name" id="name" value="{{$user->name}}">
                        </div>
                        <div class="form-col fl-right">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" value="{{$user->email}}">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="address">Địa chỉ</label>
                            <input type="text" name="address" id="address" value="{{$user->address}}">
                        </div>
                    </div>
                    <div class="form-row">
                         <div class="form-col">
                            <label for="phone">Số điện thoại</label>
                            <input type="tel" name="phone" id="phone" value="{{$user->phone}}">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-col">
                            <label for="notes">Ghi chú</label>
                            <textarea name="note" cols="75" rows="5" ></textarea>
                        </div>
                    </div>
                    <div id="payment-checkout-wp">
                        <ul id="payment_methods">
                            <li>
                                <input type="radio" id="direct-payment" name="condition" value="Thanh toán tại cửa hàng" checked="">
                                <label for="direct-payment">Thanh toán tại cửa hàng</label>
                            </li>
                            <li>
                                <input type="radio" id="payment-home" name="condition" value="Thanh toán tại nhà">
                                <label for="payment-home">Thanh toán tại nhà</label>
                            </li>
                        </ul>
                    </div>
                    <div style="margin-bottom: 20px;" class="place-order-wp clearfix">
                        <input type="submit" id="order-now" value="Đặt hàng">
                    </div> 
                </form>
            </div>
        </div>
        <div class="section" id="order-review-wp">
            <div class="section-head">
                <h1 class="section-title">Thông tin đơn hàng</h1>
            </div>
            <div class="section-detail">
                <table class="shop-table">
                    <thead>
                        <tr>
                            <td>Sản phẩm</td>
                            <td>Tổng</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($content as $ct)
                        <tr class="cart-item">
                            <td class="product-name">{{$ct->name}}<strong class="product-quantity">x {{$ct->quantity}}</strong></td>
                            <td class="product-total">{{number_format($ct->price,0,',','.')}} vnđ</td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr class="order-total">
                            <td>Tổng đơn hàng:</td>
                            <td><strong class="total-price">{{number_format($total,0,',','.')}} VNĐ</strong></td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
