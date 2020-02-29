<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class trend extends Model
{
   
    protected $table = "tbl_trend";

    protected $primaryKey = 'trend_id';

    protected $guarded = [];

}
