<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class post extends Model
{
    protected $table = "tbl_post";

    protected $primaryKey = 'post_id';

    protected $guarded = [];
}
