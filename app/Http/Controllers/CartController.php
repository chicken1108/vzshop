<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use Mail;
use App\Model\users;
use App\Model\product;
use App\Model\order;
use App\Model\order_detail;
use Illuminate\Support\Facades\Auth;  
class CartController extends Controller
{

    public function getAddCart($id)
    {
    	if(Auth::check()){
    		$product = Product::find($id);
    		$userId = auth()->user()->id; // or any string represents user identifier
			Cart::session($userId)->add(['id' => $product->prod_id, 'name' => $product->prod_name, 'quantity' => 1, 'price' => $product->prod_sale, 'attributes' => ['image' => $product->prod_image,'code'=> $product->prod_code]]);
    		return redirect('cart');
    	}else {
    		return redirect('signin');
   		 }
    }

    public function postAddCart(Request $request)
    {
        if(Auth::check()){
            $product = Product::find($request->prod_id);
            $userId = auth()->user()->id; // or any string represents user identifier
            Cart::session($userId)->add(['id' => $product->prod_id, 'name' => $product->prod_name, 'quantity' => $request->num_order, 'price' => $product->prod_sale, 'attributes' => ['image' => $product->prod_image,'code'=> $product->prod_code]]);
            return 0;
        }else {
            return redirect('signin');
         }
    }

    public function getShowCart()
    {
    	if(Auth::check()){
    		$userId = auth()->user()->id; // or any string represents user identifier
			$data['content'] = Cart::session($userId)->getContent();
			$data['total']  = Cart::session($userId)->getTotal();
    		return view('pages.cart',$data);
    	}else {
    		return redirect('signin');
    	}	
    }

    public function getDeleteCart($id)
    {
    	$userId = auth()->user()->id; // or any string represents user identifier
		Cart::session($userId)->remove($id);
    	return back();
    }

    public function getDestroyCart()
    {	
    	$userId = auth()->user()->id;
    	Cart::session($userId)->clear();
    	return back();
    }

    public function postUpdateCart(Request $request)
    {
    	$userId = auth()->user()->id; // or any string represents user identifier
			Cart::session($userId)->update($request->id, array(
			'quantity' => array(
			      'relative' => false,
			      'value' => $request->qty
			  ),
		));
    }

    public function getCheckOut()
    {
    	$userId = auth()->user()->id;
    	$data['user'] = users::find($userId);
    	$data['content'] = Cart::session($userId)->getContent();
    	$data['total']  = Cart::session($userId)->getTotal();
    	return view('pages.checkout',$data);
    }

    public function postCheckOut(Request $request)
    {
    	$request->validate(
    		[
    			'email'=>'email|required',
    			'phone'=>'required',
    			'address'=>'required',
    			'name'=>'required'
    		],
    		[
    			'email.required'=>'Bạn chưa nhập địa chỉ email',
    			'email.email'=>'Đinh dạng email chưa đúng',
    			'phone.required'=>'Bạn chưa nhập số điện thoại',
    			'address.required'=>'Bạn chưa nhập địa chỉ',
    			'name.required'=>'Bạn chưa nhập họ và tên'
    		]);
            $userid = auth()->user()->id;
            $order = new order;
            $order->ord_userid = $userid;
            $order->ord_name = $request->name;
            $order->ord_email = $request->email;
            $order->ord_address = $request->address; 
            $order->ord_phone = $request->phone;
            $order->ord_total_price = Cart::session($userid)->getTotal();
            $order->ord_condition = $request->condition; 
            $order->ord_status =  'Chờ duyệt';
            $order->ord_note =  $request->note;
            $order->save();
            $order_id = $order->ord_id;
            $content = Cart::session($userid)->getContent();
             foreach($content as $ct){
                $order_detail = new order_detail;
                $order_detail->ordt_order_id = $order_id;
                $order_detail->ordt_product_id = $ct->id;
                $order_detail->ordt_numbers = $ct->quantity;
                $order_detail->ordt_price = $ct->price;
                $order_detail->ordt_total_price = Cart::session($userid)->getTotal();
                $order_detail->save();
            }
            if($userid){
            $email = auth()->user()->email;
            $data['content'] = Cart::session($userid)->getContent();
            $data['total'] = Cart::session($userid)->getTotal();
            Mail::send('pages.mail',$data, function($message) use ($email){
                $message->from('VZshop@gmail.com','VZshop');
                $message->to($email, $email);
                $message->cc('VZshop@gmail.com','VZshop');
                $message->subject('Thông báo đặt hàng thành công');
            });
           
            Cart::session($userid)->clear();
  		 	return redirect('complete');
        }
    }
}
