<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
    <meta charset="UTF-8">
    <base href="{!! asset('') !!}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/public/backend/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/bootstrap/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link href="/public/backend/reset.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/style.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/list_post.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/fonts.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/global.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/list_product.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/add_cat.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/info_account.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/change_pass.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/sidebar.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/menu.css" rel="stylesheet" type="text/css"/>
    <link href="/public/backend/css/import/detail_order.css" rel="stylesheet" type="text/css"/>
    <script src="/public/backend/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="/public/backend/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="/public/backend/js/main.js" type="text/javascript"></script>
    <script type="text/javascript" src="public/editor/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="public/editor/ckfinder/ckfinder.js"></script>
<body>
    <div id="site">
        <div id="container">
            <div id="header-wp">
                <div class="wp-inner clearfix">
                    <a href="?page=list_post" title="" id="logo" class="fl-left">TRAIWEB</a>
                    <ul id="main-menu" class="fl-left">
                        <li>
                            <a href="admin/trend" title="">Xu hướng</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="admin/trend/add" title="">Thêm mới</a> 
                                </li>
                                <li>
                                    <a href="admin/trend" title="">Danh sách xu hướng</a> 
                                </li>
                            </ul>
                        </li>
                         <li>
                            <a href="admin/banner" title="">Banner</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="admin/banner/add" title="">Thêm mới</a> 
                                </li>
                                <li>
                                    <a href="admin/banner" title="">Danh sách banner</a> 
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="admin/product" title="">Sản phẩm</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="admin/product/add" title="">Thêm mới</a> 
                                </li>
                                <li>
                                    <a href="admin/product" title="">Danh sách sản phẩm</a> 
                                </li>
                            </ul>
                        </li>
                         <li>
                            <a href="admin/cate" title="">Danh mục Sản phẩm</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="admin/cate/add" title="">Thêm mới</a> 
                                </li>
                                <li>
                                    <a href="admin/cate" title="">Danh sách Danh mục</a> 
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="admin/order" title="">Bán hàng</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="admin/order" title="">Danh sách đơn hàng</a> 
                                </li>
                                <li>
                                    <a href="admin/user" title="">Danh sách khách hàng</a> 
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="/" title="">Trang chủ</a>
                        </li>
                    </ul>
                    <div id="dropdown-user" class="dropdown dropdown-extended fl-right">
                        <button class="dropdown-toggle clearfix" type="button"  data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            <div id="thumb-circle" class="fl-left">
                                <img src="/public/backend/images/gauchoa.png" width="50" height="30">
                            </div>
                            <h3 id="account" class="fl-right">{{Auth::user()->name}} - Admin</h3>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a href="/user" title="Thông tin cá nhân">Thông tin tài khoản</a></li>
                            <li><a href="/signout.html" title="Thoát">Đăng xuất</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            @yield('main')
            <div id="footer-wp">
                <div class="wp-inner">
                    <p id="copyright">2019 © VZshop</p>
                </div>
            </div>
        </div>
    </div>
    @yield('script')
</body>
</html>