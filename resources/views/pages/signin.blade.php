<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row" >
        <div class="col-sm-5" style="margin-top: 50px; margin-left: 350px; ">
            <div>
                <h1 align="center">Đăng nhập</h1>
            </div>
            @include('errors.note')
            <form action="" method="post">
                @csrf
              <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nhập email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Mật khẩu</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mật khẩu">
            </div>
            <div>
                <a href="/signup.html">Bạn chưa có tài khoản?</a>
                <a href="/forgotpassword.html">Quên mật khẩu?</a>
                <br>
                <span>Trở về <a href="/"> trang chủ</a></span>
            </div>
            <br>
            <div>
                <button type="submit" class="btn btn-primary">Đăng nhập</button>
            </div>
            </form>
        </div>
    </div>
</div>  
</body>
</html>