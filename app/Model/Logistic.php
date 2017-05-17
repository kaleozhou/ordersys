<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Logistic extends Model
{
     //一对一逆向
    public function order()
    {
        return $this->belongsTo('App\Model\Order');
    }
}
