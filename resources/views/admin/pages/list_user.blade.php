@extends('admin.pages.master')
@section('title','Danh sách khách hàng')
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
                                    <td><span class="thead-text">Action</span></td>
                                    <td><span class="thead-text">Tên</span></td>
                                    <td><span class="thead-text">Email</span></td>
                                    <td><span class="thead-text">SĐT</span></td>
                                    <td><span class="thead-text">Địa chỉ</span></td>
                                    <td><span class="thead-text">Thời gian</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i=0; ?>
                                @foreach($listuser as $lu)
                                <?php $i++; ?>
                                <tr>
                                    
                                    <td><span class="tbody-text">{{$i}}</h3></span>
                                    <td class="clearfix">
                                        <ul class="list-operation fl-right">
                                            <li><a href="admin/user/delete/{{$lu->id}}" onclick="return confirm('Bạn có chắc muốn xóa?');" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </td>
                                    <td>
                                        <div>
                                            <a href="" title="">{{$lu->name}}</a>
                                        </div>
                                    </td>
                                     <td>
                                        <div>
                                            <a href="" title="">{{$lu->email}}</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div>
                                            <a href="" title="">{{$lu->phone}}</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div>
                                            <a href="" title="">{{$lu->address}}</a>
                                        </div>
                                    </td>
                                    <td><span class="tbody-text">{{$lu->created_at}}</span></td>
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