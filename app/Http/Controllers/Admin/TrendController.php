<?php

namespace App\Http\Controllers\Admin;

use App\Model\trend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TrendController extends Controller
{
    public function getListTrend()
    {
    	$data['listtrend'] = trend::all();
    	return view('admin.pages.list_trend', $data);
    }

    public function getAddTrend()
    {
    	return view('admin.pages.add_trend');
    }

    public function getDeleteTrend($trend_id)
    {
    	trend::destroy($trend_id);
    	return back()->with('thongbao', 'Xóa thành công !');
    }
    public function postAddTrend(Request $request)
    {
    	$request->validate(
    	[
    		'title'=>'unique:tbl_trend,trend_title|required',
    		'content_txt'=>'required'
    	],
    	[
    		'title.unique'=>'Tiêu đề đã tồn tại',
    		'title.required'=>'Bạn chưa nhập tiêu đề',
    		'content_txt.required'=>'Bạn chưa nhập nội dung',
    	]);

    	$trend = new trend;
    	$file = $request->file('img');
    	$image = $file->getClientOriginalName();
    	$trend->trend_title = $request->title;
    	$trend->trend_slug = str_slug($request->title);
    	$trend->trend_desc = $request->desc;
    	$trend->trend_content = $request->content_txt;
    	$trend->trend_image = $image;
    	$trend->save();
    	$file->move('public/uploads/trend/',$image);
    	return back()->with('thongbao', 'Thêm thành công !');
    }

    public function getEditTrend($id)
    {
        $data['detail_trend'] = trend::find($id);
        return view('admin.pages.edit_trend',$data);
    }

    public function postEditTrend(Request $request, $id)
    {
       $request->validate(
        [
            'title'=>'required',
            'content_txt'=>'required'
        ],
        [
            'title.required'=>'Bạn chưa nhập tiêu đề',
            'content_txt.required'=>'Bạn chưa nhập nội dung',
        ]);

        $trend = trend::find($id);
        $trend->trend_title = $request->title;
        $trend->trend_slug = str_slug($request->title);
        $trend->trend_content= $request->content_txt;
        $trend->trend_desc = $request->desc;
        if($request->hasFile('img')){
            $file = $request->file('img');
            $filename = $file->getClientOriginalName();
            $trend->trend_image = $filename;
            $file->move('public/uploads/trend/',$filename);
        }
        $trend->save();
        return back()->with('suathanhcong','Sửa bài viết thành công!');
    }
}
