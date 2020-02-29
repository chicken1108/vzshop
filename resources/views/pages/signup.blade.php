<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>signup</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row" >
        <div class="col-sm-5" style="margin-top: 50px; margin-left: 350px; ">
            <div>
                <h1 align="center">Đăng ký</h1>
            </div>
            @include('errors.note')
            <form action="" method="post">
                @csrf
              <div class="form-group">
                <label for="exampleInputEmail1">Địa chỉ email</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Họ và tên</label>
                <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Tên">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Địa chỉ</label>
                <input type="text" name="address" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Địa chỉ">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Số ĐT</label>
                <input type="text" name="phone" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Số ĐT">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Mật khẩu</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mật khẩu">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Nhập lại mật khẩu</label>
                <input type="password" name="re-password" class="form-control" id="exampleInputPassword1" placeholder="Nhập lại mật khẩu">
            </div>
            <div>
                <a href="/signin.html">Bạn đã có tài khoản?</a>
                <br>
                <span>Trở về <a href="/">Trang chủ</a></span>
            </div>
            <br>
           <div>
                <button type="submit" class="btn btn-primary">Đăng ký</button>
           </div>
            </form>
        </div>
    </div>
</div>  
</body>
</html>