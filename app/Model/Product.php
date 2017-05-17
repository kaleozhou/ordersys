<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //一对多逆向
    public function category()
    {
        return $this->belongsTo('App\Model\Category');
    } 
    //一对多
    public function imgs()
    {
        return $this->hasMany('App\Model\Img');
    }
    public function orders()
    {
        return $this->hasMany('App\Model\Order');
    }
    public function stocks()
    {
        return $this->hasMany('App\Model\Stock');
    }
    public function attributes()
    {
        return $this->hasMany('App\Model\Attribute');
    }

}
