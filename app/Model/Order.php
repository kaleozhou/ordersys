<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //一对一
    public function logistic()
    {
        return $this->hasone('App\Model\Logistic');
    }
     //一对多逆向
    public function product()
    {
        return $this->belongsTo('App\Model\Product');
    }
    public function customer()
    {
        return $this->belongsTo('App\Model\Customer');
    }
    

}
