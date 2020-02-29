@extends('admin.pages.master')
@section('title','Thêm sản phẩm')
@section('main')
<div id="main-content-wp" class="add-cat-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_product" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Thêm sản phẩm</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        @include('admin.pages.sidebar')
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                @include('errors.note')
                <div class="section-detail">
                    <form method="POST" action="" enctype="multipart/form-data">
                        @csrf
                        <label for="product-name">Tên sản phẩm</label>
                        <input type="text" name="prod_name" id="product-name">

                        <label for="product-code">Mã sản phẩm</label>
                        <input type="text" name="prod_code" id="product-code">

                        <label for="price">Giá sản phẩm</label>
                        <input type="text" name="prod_price" id="price">

                         <label for="price">Giá sale</label>
                        <input type="text" name="prod_sale" id="sale">

                        <label for="desc">Mô tả ngắn</label>
                        <textarea name="prod_desc" id="desc"></textarea>

                        <label for="desc">Chi tiết</label>
                        <textarea name="prod_detail" id="desc"></textarea>

                        <label>Hình ảnh</label>
                        <input required id="img" type="file" name="image" id="upload-thumb" onchange="changeImg(this)">
                        <img id="avatar" src="" alt="">

                        <label>Danh mục sản phẩm</label>
                        <select name="prod_cate">
                            @foreach($listcate as $lc)
                            <option value="{{$lc->cate_id}}">{{$lc->cate_title}}</option>
                            @endforeach
                        </select>
                        <button type="submit" name="btn-submit" id="btn-submit">Thêm mới</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('script')
<script>
    CKEDITOR.replace( 'prod_detail', {
            filebrowserBrowseUrl: '../../public/editor/ckfinder/ckfinder.html',
            filebrowserImageBrowseUrl: '../../public/editor/ckfinder/ckfinder.html?type=Images',
            filebrowserFlashBrowseUrl: '../../public/editor/ckfinder/ckfinder.html?type=Flash',
            filebrowserUploadUrl: '../../public/editor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '../../public/editor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl: '../../public/editor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
        } );
</script>
<script>
    function changeImg(input){
            //Nếu như tồn thuộc tính file, đồng nghĩa người dùng đã chọn file mới
            if(input.files && input.files[0]){
                var reader = new FileReader();
                //Sự kiện file đã được load vào website
                reader.onload = function(e){
                    //Thay đổi đường dẫn ảnh
                    $('#avatar').attr('src',e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $(document).ready(function() {
            $('#avatar').click(function(){
                $('#img').click();
            });
        });
</script>
@endsection
