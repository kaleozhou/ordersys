<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Stock extends Model
{
         //一对一逆向
    public function product()
    {
        return $this->belongsTo('App\Model\Product');
    }

}
