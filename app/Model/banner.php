<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class banner extends Model
{
    protected $table = "tbl_banner";

    protected $primaryKey = 'ban_id';

    protected $guarded = [];
}
