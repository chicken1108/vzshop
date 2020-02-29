<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class comment extends Model
{
    protected $table = "tbl_comment";

    protected $primarykey = 'com_id';

    protected $guarded = [];

    public function user()
    {
    	return $this->belongsTo('App\Model\users','com_iduser','id');
    }

    public function product()
    {
    	return $this->belongsTo('App\Model\product','com_product','prod_id');
    }
}
