<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\category;

class CategoryController extends Controller
{
    public function getCate()
    {
    	$data['listcate'] = category::all();
    	return view('admin.pages.list_cat',$data);
    }

    public function getAddCate()
    {
    	return view('admin.pages.add_cat');
    }

    public function getDeleteCate($id)
    {
    	category::destroy($id);
    	return back();
    }

    public function getEditCate($id)
    {
    	$data['cate'] = category::find($id);
    	return view('admin.pages.edit_cate',$data);
    }

    public function postAddCate(Request $request)
    {
    	$category = new category;
    	$category->cate_title = $request->title;
    	$category->cate_slug = str_slug($request->title);
    	$category->cate_content = $request->content;
    	$category->save();
    	return back();
    }

    public function postEditCate(Request $request, $id)
    {
    	$category = category::find($id);
    	$category->cate_title = $request->title;
    	$category->cate_slug = str_slug($request->title);
    	$category->cate_content = $request->content;
    	$category->save();
    	return redirect('admin/cate');
    }
}
