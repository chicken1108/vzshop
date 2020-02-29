<div class="container">
	<div class="row">
		<h3>Thông tin khách hàng</h3>
		<p>Khách hàng: {{Auth::user()->name}}</p>
		<p>Email: {{Auth::user()->email}}</p>
		<p>Điện thoại: {{Auth::user()->phone}}</p>
		<p>Địa chỉ: {{Auth::user()->address}}</p>
		<table>
			<caption>Thông tin đơn hàng</caption>
			<tr>
				<th>Tên SP</th>
				<th>Giá</th>
				<th>Số lượng</th>
				<th>Thành tiền</th>
			</tr>
			@foreach($content as $ct)
			<tr>
				<th>{{$ct->name}}</th>
				<th>{{$ct->price}}</th>
				<th>{{$ct->quantity}}</th>
				<th>{{number_format($ct->price*$ct->quantity,0,',','.')}} vnđ</th>
			</tr>
			@endforeach
			<tr><h3>Tổng thanh toán: {{number_format($total,0,',','.')}} vnđ</h3></tr>
		</table>
		<h3>Quý khách đã đặt hàng thành công!</h3>
		<p>• Sản phẩm của Quý khách sẽ được chuyển đến Địa chỉ có trong phần Thông tin Khách hàng của chúng Tôi sau thời gian 2 đến 3 ngày, tính từ thời điểm này.</p>
		<p>• Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 24 tiếng.</p>
		<h3>Cám ơn Quý khách đã sử dụng Sản phẩm của Công ty chúng Tôi!</h3>
	</div>
</div>
