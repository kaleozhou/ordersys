<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $fillable = ['phone'];
    //一对多
    public function orders()
    {
        return $this->hasMany('App\Model\Order');
    }
}
