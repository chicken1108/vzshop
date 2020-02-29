@extends('admin.pages.master')
@section('title','Danh sách xu hướng')
@section('main')
<div id="main-content-wp" class="list-post-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_cat" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Danh sách bài viết</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        @include('admin.pages.sidebar')
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="table-responsive">
                        @include('errors.note')
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Tiêu đề</span></td>
                                    <td><span class="thead-text">Mô tả</span></td>
                                    <td><span class="thead-text">Hình ảnh</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($listtrend as $lt)
                                <?php $i++; ?>
                                <tr>
                                    
                                    <td><span class="tbody-text">{{$i}}</h3></span>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="" title="">{{$lt->trend_title}}</a>
                                        </div>
                                        
                                        <ul class="list-operation fl-right">
                                            <li><a href="admin/trend/edit/{{$lt->trend_id}}" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                            <li><a href="admin/trend/delete/{{$lt->trend_id}}" onclick="return confirm('Bạn có chắc muốn xóa?');" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </td>
                                    <td width="300px">
                                        <div>
                                            <a href="" title="">{{$lt->trend_desc}}</a>
                                        </div>
                                    </td>
                                    <td><img width="200px;" src="public/uploads/trend/{{$lt->trend_image}}" alt=""></td>
                                    <td><span class="tbody-text">{{$lt->created_at}}</span></td>
                                </tr>
                                @endforeach
                            </thead>
                        </table>
                    </div>

                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                </div>
            </div>
        </div>
    </div>
</div>
@endsection