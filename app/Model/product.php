<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    protected $table = "tbl_product";

    protected $primaryKey = 'prod_id';

    protected $guarded = [];

    public function category()
    {
    	return $this->belongsTo('App\Model\category','prod_category','cate_id');
    }

    public function orderdetail()
    {
    	return $this->hasMany('App\Model\order_detail','ordt_product_id','prod_id');
    }
}
