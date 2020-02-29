<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\order;
use App\Model\order_detail;

class OrderController extends Controller
{
   public function getListOrder()
   {
   		$data['list_order'] = order::all();
   		return view('admin.pages.list_order',$data);
   }

   public function getDeleteOrder($id)
   {
   		order::destroy($id);
   		return back();
   }

   public function getEditOrder($id)
   {
   		$data['order'] = order::find($id);
   		$data['order_detail'] = order_detail::where('ordt_order_id',$id)->get();
   		return view('admin.pages.edit_order',$data);
   }

   public function postEditOrder(Request $request)
   {
   		$order = order::find($request->ord_id);
   		$order->ord_status = $request->status;
   		$order->save();
   }
}
