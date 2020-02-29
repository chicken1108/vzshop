<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>
    <meta charset="UTF-8">
    <base href="{!! asset('') !!}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="image/x-icon" rel="shortcut icon" href="/public/asset/images/gauchoa.png" />
    <link href="/public/asset/css/bootstrap/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="/public/asset/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/public/asset/css/carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="/public/asset/css/carousel/owl.theme.css" rel="stylesheet" type="text/css"/>
    <link href="/public/asset/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/public/asset/reset.css" rel="stylesheet" type="text/css"/>
    <link href="/public/asset/responsive.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/public/asset/css/import/fonts.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/global.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/home.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/header.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/footer.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/category_product.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/category_news.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/detail_product.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/detail_news.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/cart.css" type="text/css">
    <link rel="stylesheet" href="/public/asset/css/import/checkout.css" type="text/css">
    @yield('style')
    @yield('link')
</head>
<body>
    @include('inc.header')

    @yield('content')

    @include('inc.footer')
    
    <script src="/public/asset/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="/public/asset/js/elevatezoom-master/jquery.elevateZoom-3.0.8.min.js" type="text/javascript"></script>
    <script src="/public/asset/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script src="/public/asset/js/carousel/owl.carousel.js" type="text/javascript"></script>
    <script src="/public/asset/js/main.js" type="text/javascript"></script>
     <script type="text/javascript" src="/public/editor/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/public/editor/ckfinder/ckfinder.js"></script>

    @yield('script')

</body>
</html>