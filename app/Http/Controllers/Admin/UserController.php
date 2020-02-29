<?php

namespace App\Http\Controllers\Admin;

use App\Model\users;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function getListUser()
    {
    	$data['listuser'] = users::all();
    	return view('admin.pages.list_user', $data);
    }

    public function getDeleteUser($id)
    {
    	users::destroy($id);
    	return back()->with('thongbao', 'Xóa user thành công !');
    }
}
