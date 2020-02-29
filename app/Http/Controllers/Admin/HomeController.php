<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\model\post;

class HomeController extends Controller
{
    public function getHome()
    {
    	return view('admin.pages.master');
    }
}
