
<div id="footer-wp">
    <div id="foot-body">
        <div class="wp-inner clearfix">
            <div class="block" id="about-us">
                <h3 class="title">Về chúng tôi</h3>
                <div class="detail">
                    <ul class="list-item">
                        <li>
                            <a href="mailto:vietsoz@gmail.com">nguyenkhai321ls@gmail.com</a>
                        </li>
                        <li>
                            <p class="tel">033.690.7979</p>
                        </li>
                        <li>
                            <p class="phone">033.690.7979</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="block" id="category-product">
                <h3 class="title">Danh mục sản phẩm</h3>
                <div class="detail">
                    <ul class="list-item">
                        @foreach($category as $ct)
                        <li>
                            <a href="/{{$ct->cate_slug}}&{{$ct->cate_id}}" title="">{{$ct->cate_title}}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="block" id="top-selling">
                <h3 class="title">Top bán chạy</h3>
                <div class="detail">
                    <ul class="list-item">
                        @foreach($category as $ct)
                        <li>
                            <a href="/{{$ct->cate_slug}}&{{$ct->cate_id}}" title="">{{$ct->cate_title}}</a>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>

            <div class="block" id="top-selling">
                <h3 class="title">Liên Kết</h3>
                <div class="detail">
                    <ul class="list-item">
                        <li>
                            <a href="https://www.facebook.com/fpgauchoa/" title="">Facebook</a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/" title="">Youtube</a>
                        </li>
                        <li>
                            <a href="https://www.instagam.com/" title="">Instagram</a>
                        </li>
                    </ul>
                </div>
            </div>  
        
        </div>
    </div>
    <div id="foot-bottom">
        <div class="wp-inner">
            <p id="copyright">© 2019 vzshop.com - All rights reserved.</p>
        </div>
    </div>
</div>
</div>
</div>
<div id="btn-top">
    <img src="public/images/icon-to-top.png" alt="">
</div>
<div id="fb-root"></div>
<script>
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id))
            return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=849340975164592";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
