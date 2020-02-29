<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    protected $table = "tbl_category";

    protected $primaryKey = 'cate_id';

    protected $guarded = [];

    public function product()
    {
    	return $this->hasMany('App\Model\product','prod_category','cate_id');
    }
}
