<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\banner;
use Illuminate\Support\Facades\Storage;
class BannerController extends Controller
{
    public function getListBanner()
    {
    	$data['listbanner'] = banner::all();
    	return view('admin.pages.list_banner',$data);
    }

    public function getAddBanner()
    {
    	return view('admin.pages.add_banner');
    }

    public function postAddBanner(Request $request)
    {
    	$banner = new banner;
    	$file = $request->file('img');
    	$filename = $file->getClientOriginalName();
    	$banner->ban_title = $request->title;
    	$banner->ban_image = $filename;
    	$banner->ban_active = $request->active;
    	$file->move('public/backend/banner',$filename);
    	$banner->save();
    	return back()->with('themthanhcong','Thêm banner thành công');
    }

    public function getDeleteBanner($id)
    {
    	banner::destroy($id);
    	return back()->with('xoathanhcong','Xóa banner thành công!');
    }

    public function getEditBanner($id)
    {
    	$data['detail_banner'] = banner::find($id);
    	return view('admin.pages.edit_banner',$data);
    }

    public function postEditBanner(Request $request, $id)
    {
    	$banner = banner::find($id);
    	$banner->ban_title = $request->title;
    	$banner->ban_active = $request->active;
    	if($request->hasFile('img')){
    		$file = $request->file('img');
    	$filename = str_random(5).'_'.$file->getClientOriginalName();
    	$banner->ban_image = $filename;
    	$file->move('public/backend/banner',$filename);
    	}
    	$banner->save();
    	
    	return redirect('admin/banner')->with('suathanhcong','Sửa banner thành công!');
    }
}
