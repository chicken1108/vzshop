@extends('admin.pages.master')
@section('title','Sửa danh mục sản phẩm')
@section('main')
<div id="main-content-wp" class="add-cat-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_cat" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Thêm mới danh mục</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        @include('admin.pages.sidebar')
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <form method="POST" action="admin/cate/edit/{{$cate->cate_id}}">
                        @csrf
                        <label for="title">Tiêu đề</label>
                        <input type="text" name="title" id="title" value="{{$cate->cate_title}}">
                        <label for="desc">Nội dung</label>
                        <textarea name="content" id="content">{{$cate->cate_content}}</textarea>
                        <button type="submit" name="btn-submit" id="btn-submit">Sửa</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection