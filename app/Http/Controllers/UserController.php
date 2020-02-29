<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\users;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;
use App\Model\order;
use App\Model\order_detail;

class UserController extends Controller
{
    public function getInfoUser()
    {
        $id = auth()->user()->id;
        $data['user'] = users::find($id);
        $data['order'] = order::where('ord_userid',$id)->get();
        return view('pages.user',$data);
    }

    public function postChangePassword(Request $request)
    {
    	$request->validate(
    		[
    			'oldpassword'=>'required|min:6|max:22',
    			'newpassword'=>'required|min:6|max:22',
    			're-newpassword'=>'same:newpassword|required'
    		],

    		[
    			'oldpassword.required'=>'Bạn chưa nhập mật khẩu cũ',
    			'newpassword.required'=>'Bạn chưa nhập mật khẩu mới',
    			're-newpassword.required'=>'Bạn chưa nhập lại mật khẩu cũ',
    			'oldpassword.min'=>'Mật khẩu phải có tối thiếu 6 ký tự',
    			'oldpassword.max'=>'Mật khẩu không vượt qua 22 ký tự',
    			'newpassword.min'=>'Mật khẩu phải có tối thiếu 6 ký tự',
    			'newpassword.max'=>'Mật khẩu không vượt qua 22 ký tự',
    			're-newpassword.same'=>'Mật khẩu nhập lại không khớp',
    		]);
		$hashedPassword = users::find(auth()->user()->id)->password;
		if(Hash::check($request->oldpassword, $hashedPassword)) {
		    $user = users::find(auth()->user()->id);
		    $user->password = bcrypt($request->newpassword);
		    $user->save();
		    return back()->with('thongbao','Thay đổi mật khẩu thành công');
		}else {
			return back()->with('thongbao','Mật khẩu không đúng');
		}
    }

    public function postInfoUser(Request $request)
    {
    	$request->validate(
    		[
    			'address'=>'required',
    			'name'=>'required',
    		],
    		[
    			'address.required'=>'Bạn chưa nhập địa chỉ',
    			'name.required'=>'Bạn chưa nhập tên',
    		]);
    	$user = users::find(auth()->user()->id);
    	$user->address = $request->address;
    	$user->name = $request->name;
    	$user->save();
    	return back();
    }
}
