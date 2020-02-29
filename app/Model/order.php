<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    protected $table = "tbl_order";
    
 	protected $primaryKey = 'ord_id';

    protected $guarded = [];

    public function orderdetail()
    {
    	return $this->belongsTo('App\Model\order_detail','ord_id','ordt_order_id');
    }
}
