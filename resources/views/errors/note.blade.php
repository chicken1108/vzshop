@if(Session::has('themthanhcong'))
<div class="alert alert-success">{{session('themthanhcong')}}</div>
@endif
@if(Session::has('xoathanhcong'))
<div class="alert alert-success">{{session('xoathanhcong')}}</div>
@endif
@if(Session::has('suathanhcong'))
<div class="alert alert-success">{{session('suathanhcong')}}</div>
@endif
@if(Session::has('dangkythanhcong'))
<div class="alert alert-success">{{session('dangkythanhcong')}}</div>
@endif
@if(Session::has('dangnhapkhongthanhcong'))
<div class="alert alert-success">{{session('dangnhapkhongthanhcong')}}</div>
@endif
@if(Session::has('thongbao'))
<div class="alert alert-success">{{session('thongbao')}}</div>
@endif
@foreach($errors->all() as $err)
<div class="alert alert-danger">{{$err}}</div>
@endforeach