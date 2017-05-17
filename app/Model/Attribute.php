<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Attribute extends Model
{
      //一对多逆向
    public function product()
    {
        return $this->belongsTo('App\Model\Product');
    }
}
