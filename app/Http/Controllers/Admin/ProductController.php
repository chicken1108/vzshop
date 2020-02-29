<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Requests\AddProductRequest;
use App\Http\Controllers\Controller;
use App\Model\category;
use App\Model\product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function getProduct()
    {
        $data['listprod'] = product::all();
    	return view('admin.pages.list_product',$data);
    }

    public function getAddProduct()
    {
        $data['listcate'] = category::all();
    	return view('admin.pages.add_product',$data);
    }

    public function postAddProduct(Request $request)
    {
         $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);
        $file = $request->file('image');
        $filename = $file->getClientOriginalName('image');
    	$product = new product;
        $product->prod_name = $request->prod_name;
        $product->prod_slug = str_slug($request->prod_name);
        $product->prod_code = $request->prod_code;
        $product->prod_price = $request->prod_price;
        $product->prod_category = $request->prod_cate;
        $product->prod_detail = $request->prod_detail;
        $product->prod_sale = $request->prod_sale;
        $product->prod_description = $request->prod_desc;
        $product->prod_image = $filename;
        $file->move('public/uploads/product/',$filename);
        $product->save();
        return back()->with('themthanhcong','Thêm sản phẩm thành công');
    }


    public function getDeleteProduct($id)
    {
        product::destroy($id);
        return back()->with('xoathanhcong','Xóa sản phẩm thành công');
    }

    public function getEditProduct($id)
    {
    	$data['product'] = product::find($id);
        $data['listcate'] = category::all();
        return view('admin.pages.edit_product',$data);
    }

    public function postEditProduct(Request $request, $id)
    {
        $product = product::find($id);
        $product->prod_name = $request->prod_name;
        $product->prod_slug = str_slug($request->prod_name);
        $product->prod_code = $request->prod_code;
        $product->prod_price = $request->prod_price;
        $product->prod_category = $request->prod_cate;
        $product->prod_detail = $request->prod_detail;
        $product->prod_sale = $request->prod_sale;
        $product->prod_description = $request->prod_desc;
        if($request->hasFile('image')){
            $file = $request->file('image');
            $filename = $file->getClientOriginalName('image');
            $product->prod_image = $filename;
            $file->move('public/uploads/product/',$filename);
        }
        $product->save();
        return redirect('admin/product');
    }
}
