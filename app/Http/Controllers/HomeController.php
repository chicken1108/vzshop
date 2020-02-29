<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\product;
use App\Model\category;
use App\Model\post;
use App\Model\users;
use App\Model\banner;
use App\Model\email;
use App\Model\comment;
use App\Model\trend;
use Illuminate\Support\Facades\Auth;
use DB;
use Cart;
use Mail;
class HomeController extends Controller
{
    public function getHome()
    {
    	$data['prod_promotion'] = product::where('prod_sale', '>', 0)->orderby('created_at','desc')->limit(5)->get();
        $data['listtrend'] = trend::all();
        $data['listbanner'] = banner::orderby('ban_active','DESC')->take(4)->get();
    	return view('pages.home', $data);
    }

    public function getSearch(Request $request)
    {
        $data['key'] = $request->key;
        $key= str_replace(' ', '%', $data['key']);
        $data['result'] = product::where('prod_name','like','%'.$data['key'].'%')->paginate(8);
        return view('pages.search', $data);
    }

    public function getDetailProduct($cate_slug, $prod_slug, $prod_id)
    {
    	$data['detail_prod'] = product::find($prod_id);
    	$data['cate'] = category::where('cate_id',$data['detail_prod']->prod_category)->get();
        $data['related_prod'] = product::where('prod_category','=',$data['detail_prod']->prod_category)->where('prod_id','!=',$prod_id)->take(4)->get();
        $data['new_prod'] = product::where('prod_category','!=',$data['detail_prod']->prod_category)->orderby('created_at','desc')->take(5)->get();
        $data['listcomment'] = comment::where('com_product',$prod_id)->orderby('created_at','asc')->get();
    	return view('pages.detail_product',$data);
    }

    public function getProductByCate($cate_slug, $cate_id)
    {
    	$data['cate'] = category::find($cate_id);
    	$data['listprod'] = product::where('prod_category',$cate_id)->paginate(8);
    	return view('pages.category_product',$data);
    }

    public function getSignup()
    {

    	return view('pages.signup');
    }

    public function getSignin()
    {
    	return view('pages.signin');
    }

    public function postSignup(Request $request)
    {
    	$request->validate(
    		[
    			'email'=>'email|unique:users,email|required',
    			'password'=>'required|min:6|max:16',
    			're-password'=>'required|same:password',
    			'phone'=>'required|unique:users,phone',
    			'address'=>'required',
    			'name'=>'required'
    		],
    		[
    			'email.email'=>'Bạn chưa nhập đúng định dạng email',
    			'email.unique'=>'Email đã tồn tại',
    			'email.required'=>'Bạn chưa nhập địa chỉ email',
    			'password.required'=>'Bạn chưa nhập mật khẩu',
    			'password.min'=>'Mật khẩu phải có tối thiểu 6 ký tự',
    			'password.max'=>'Mật khẩu không vượt quá 16 ký tự',
    			're-password.same'=>'Mật khẩu nhập lại không đúng',
    			'phone.required'=>'Bạn chưa nhập số điện thoại',
    			'phone.unique'=>'Số điện thoại đã tồn tại',
    			'address.required'=>'Bạn chưa nhập địa chỉ',
    			'name.required'=>'Bạn chưa nhập họ và tên'
    		]);
    	$users = new users;
    	$users->name = $request->name;
    	$users->email = $request->email;
    	$users->password = bcrypt($request->password);
    	$users->phone = $request->phone;
    	$users->address = $request->address;
    	$users->level = 0;
    	$users->save();
    	return redirect('/signin.html')->with('dangkythanhcong','Đăng ký thành công!');
    }

    public function postSignin(Request $request)
    {
    	$request->validate(
    	[
    		'email'=>'required|email',
    		'password'=>'required|min:6|max:16',
    	],
    	[
    		'email.required'=>'Bạn chưa nhập email',
    		'email.email'=>'Bạn chưa nhập đúng định dạng email',
    		'password.min'=>'Mật khẩu phải có tối thiểu 6 ký tự',
    		'password.max'=>'Mật khẩu không vượt quá 16 ký tự',
    		'password.required'=>'Bạn chưa nhập mật khẩu'
    	]);

    if(Auth::attempt(['email'=>$request->email,'password'=>$request->password])){
    		if(Auth::user()->level==1){
                return redirect('/admin');
            }else {
                return redirect('/');
            }
    	}
    	else {
    		return back()->with('dangnhapkhongthanhcong','Đăng nhập không thành công');
    	}
    }

    public function getSignout()
    {
    	Auth::logout();
    	return redirect('signin.html');
    }

    public function getComplete()
    {
        return view('pages.complete');
    }

    public function getAboutUs()
    {
        return view('pages.about_us');
    }

    public function getForgotPassword()
    {
        return view('pages.forgotpassword');
    }

    public function postForgotPassword(Request $request)
    {
        $request->validate(
            [
                'email'=>'email|required',
                'phone'=>'required'
            ],
            [
                'email.email'=>'Định dạng email chưa đúng',
                'email.required'=>'Bạn chưa nhập email',
                'phone.required'=>'Bạn chưa nhập số điện thoại'
            ]);
        $users = users::where('email',$request->email)->where('phone',$request->phone)->get();
        if(count($users)>0){
           foreach ($users as $value) {
                $email = $request->email;
               $user =  users::find($value->id);
               $data['info'] = $request->all();
               $data['newpassword'] = str_random(10);
               $user->email = $request->email;
               $user->phone = $request->phone;
               $user->password = bcrypt($data['newpassword']);
               $user->save();
                Mail::send('pages.sendnewpassword',$data, function($message) use ($email){
                $message->from('VZshop@gmail.com','VZshop');
                $message->to($email, $email);
                $message->cc('VZshop@gmail.com','VZshop');
                $message->subject('Thông báo thay đổi mật khẩu');
                });
            return redirect('signin.html')->with('thongbao','Thay đổi mật khẩu thành công! vui lòng kiểm tra email của bạn và đăng nhập tại đây'); 
           }
        }else {
            return redirect('forgotpassword.html')->with('thongbao','Email hoặc số điện thoại không tồn tại!');
        }
    }

    public function postAddEmail(Request $request)
    {
        $email = new email;
        $email->email = $request->email;
        $email->save(); 
        return 0;
    }

    public function postAddComment(Request $request)
    {
        $comment = new comment;
        $comment->com_iduser = $request->userid;
        $comment->com_product  = $request->prod_id;
        $comment->com_content = $request->content;
        $comment->save();
        return 0;
    }

    public function getListTrend()
    {
        $data['listtrend'] = trend::all();
        $data['newproduct'] = product::orderby('created_at','desc')->take(5)->get();
        return view('pages.list_trend', $data);
    }

    public function getDetailTrend($trend_slug, $trend_id)
    {
        $data['detail_trend'] = trend::find($trend_id);
        $data['newproduct'] = product::orderby('created_at','desc')->take(5)->get();
        $data['related_trend'] = trend::where('trend_id','!=',$trend_id)->take(4)->get();
        return view('pages.detail_trend', $data);

    }
}
