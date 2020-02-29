@extends('inc.index')
@section('title','Thông tin tài khoản')
@section('style')
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 300px;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 70%;
  border-left: none;
}
.info-acc div{
  margin-top: 10px;
  margin-left: 100px;
  padding: 5px;
  width: 500px;
}
.err{
  margin-top: 5px;
  margin-left: 450px;
  width: 500px;
}
</style>
@section('link')
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
@section('content')
<div id="main-content-wp" class="checkout-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail clearfix">
                <h3 class="title fl-left">Thông tin tài khoản</h3>
                <ul class="list-breadcrumb fl-right">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="/user" title="">Thông tin tài khoản</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="err" align="center">
      @include('errors.note')
    </div>
    <div id="wrapper" class="wp-inner clearfix" style="margin-bottom: 100px;">
      <div class="tab">
        <button><i class="fas fa-user"></i> {{Auth::user()->name}}</button>
        <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">Tài khoản của tôi</button>
        <button class="tablinks" onclick="openCity(event, 'Paris')">Đơn hàng</button>
        <button class="tablinks" onclick="openCity(event, 'Tokyo')">Đổi mật khẩu</button>
        <button><a href="/signout.html">Đăng xuất</a></button>
      </div>

      <div id="London" class="tabcontent">
        <form action="" method="post">
          @csrf
        <div class="info-acc">
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" readonly="" aria-describedby="emailHelp" value="{{$user->email}}" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Address</label>
                <input type="text" name="address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$user->address}}" placeholder="Address">
            </div>
             <div class="form-group">
                <label for="exampleInputEmail1">Phone</label>
                <input type="email" name="phone" readonly="" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$user->phone}}" placeholder="Phone">
            </div>
             <div class="form-group">
                <label for="exampleInputEmail1">Name</label>
                <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{$user->name}}" placeholder="Name">
            </div>
            <div align="center">
              <input type="submit" class="btn btn-danger" value="Lưu">
            </div>
      </div>
        </form>
      </div>

      <div id="Paris" class="tabcontent">
        <table class="table list-table-wp">
          <thead>
            <tr>
              <td><span class="thead-text">Mã đơn hàng</span></td>
               <td><span class="thead-text">Ảnh</span></td>
              <td><span class="thead-text">Tên SP</span></td>
             
              <td><span class="thead-text">Số lượng</span></td>
              <td><span class="thead-text">Giá</span></td>
              <td><span class="thead-text">Tổng giá</span></td>
              <td><span class="thead-text">Trạng thái</span></td>
            </tr>
          </thead>
          <tbody>
            @foreach($order as $value)
            <tr>
                <td><span class="tbody-text">{{$value->ord_id}}</h3></span>
                  <td>
                    <?php $order_detail = $value->orderdetail->where('ordt_order_id',$value->ord_id)->get(); ?>
                   @foreach($order_detail as $ordt)
                    <a href=""><img src="/public/uploads/product/{{$ordt->product->prod_image}}" width="30px" alt=""></a>
                    <br>
                  @endforeach
                  </td>

                  <td>
                   @foreach($order_detail as $ordt)
                  <?php $cate_slug = $ordt->product->category->cate_slug ?>
                   <a href="/{{$cate_slug}}/{{$ordt->product->prod_slug}}&{{$ordt->product->prod_id}}.html">{{$ordt->product->prod_name}}</a>
                   <hr>
                   @endforeach
                 </td>

                 <td>
                  @foreach($order_detail as $ordt)
                     <span>{{$ordt->ordt_numbers}}</span>
                    <hr>
                  @endforeach
                 </td>

                 <td>
                  @foreach($order_detail as $ordt)
                     <span>{{number_format($ordt->ordt_price,0,',','.')}} vnđ</span>
                    <hr>
                  @endforeach
                 </td>

                 <td>
                  <span class="tbody-text">{{number_format($value->ord_total_price,0,',','.')}} vnđ</span>
                </td>
                  <td><span class="tbody-text">{{$value->ord_status}}</span></td>
            </tr>
                @endforeach
              </tbody>
              </table>
            </div>

      <div id="Tokyo" class="tabcontent">
        <div class="info-acc">
          <form action="user/changepassword" method="post">
            @csrf
            <div class="form-group">
                <label for="exampleInputEmail1">Mật khẩu cũ</label>
                <input type="password" name="oldpassword" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Mật khẩu cũ">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Mật khẩu mới</label>
                <input type="password" name="newpassword" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  placeholder="Mật khẩu mới">
            </div>
             <div class="form-group">
                <label for="exampleInputEmail1">Nhập lại mật khẩu mới</label>
                <input type="password" name="re-newpassword" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập lại mật khẩu mới">
            </div>
            <div align="center">
              <input type="submit" class="btn btn-danger" value="Thay đổi">
            </div>
            </form>
      </div>
      </div>
    </div>
@endsection
@section('script')
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
@endsection