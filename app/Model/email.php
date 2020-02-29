<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class email extends Model
{
    protected $table = "tbl_email";

    protected $primarykey = 'id';

    protected $guarded = [];
}
