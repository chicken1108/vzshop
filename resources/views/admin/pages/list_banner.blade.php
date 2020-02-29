@extends('admin.pages.master')
@section('title','Danh sách banner')
@section('main')
<div id="main-content-wp" class="list-post-page">
    <div class="section" id="title-page">
        <div class="clearfix">
            <a href="?page=add_page" title="" id="add-new" class="fl-left">Thêm mới</a>
            <h3 id="index" class="fl-left">Danh sách trang</h3>
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
                                    <td><span class="thead-text">Chức năng</span></td>
                                    <td><span class="thead-text">Hình</span></td>
                                    <td><span class="thead-text">Kích hoạt</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($listbanner as $lb)
                                <?php $i++; ?>
                                <tr>
                                    
                                    <td><span class="tbody-text">{{$i}}</h3></span>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="" title="">{{$lb->ban_title}}</a>
                                        </div>
                                    </td>
                                    <td>
                                      <ul class="list-operation ">
                                        <li><a href="admin/banner/edit/{{$lb->ban_id}}" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                        <li><a href="admin/banner/delete/{{$lb->ban_id}}" title="Xóa" onclick="return confirm('Bạn có chắc muốn xóa?')" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                    </ul>
                                    </td>
                                    <td>
                                        <div>
                                            <img src="public/backend/banner/{{$lb->ban_image}}" width="300px;" alt="">
                                        </div>
                                    </td>
                                    <td><span class="tbody-text">{{$lb->ban_active}}</span></td>
                                    <td><span class="tbody-text">{{$lb->update_at}}</span></td>
                                </tr>@endforeach
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