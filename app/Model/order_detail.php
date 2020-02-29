<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class order_detail extends Model
{
    protected $table = "tbl_order_detail";

    protected $primarykey = "ordt_id";

    protected $guarded = [];

    public function product()
    {
    	return $this->belongsTo('App\Model\product','ordt_product_id','prod_id');
    }
}
