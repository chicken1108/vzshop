@extends('admin.pages.master')
@section('title','Danh mục sản phẩm')
@section('main')
<div id="main-content-wp" class="list-cat-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_cat" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Danh sách danh mục</h3>
        </div>
    </div>
    <div class="wrap clearfix">
        @include('admin.pages.sidebar')
        <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Tiêu đề</span></td>
                                    <td><span class="thead-text">Tiêu đề không dấu</span></td>
                                    <td><span class="thead-text">Nội dung</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($listcate as $lc)
                                <?php $i++; ?>
                                <tr>
                                    
                                    <td><span class="tbody-text">{{$i}}</h3></span>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <p href="" title="">{{$lc->cate_title}}</p>
                                        </div> 
                                        <ul class="list-operation fl-right">
                                            <li><a href="admin/cate/edit/{{$lc->cate_id}}" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                            <li><a href="admin/cate/delete/{{$lc->cate_id}}" onclick="return confirm('Bạn có chắc muốn xóa?');" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </td>
                                    <td><span class="tbody-text">{{$lc->cate_slug}}</span></td>
                                    <td><span class="tbody-text">{{$lc->cate_content}}</span></td>
                                    <td><span class="tbody-text">{{$lc->created_at}}</span></td>
                                </tr>
                                @endforeach
                            </tbody>
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