<?php

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            //产品一养猪
            [
                'name'=>'养猪技术大全光盘版',
                'price'=>298,
                'category_id'=>1,
                'created_at'=>date('Y/m/d H:i:s'),
                'updated_at'=>date('Y/m/d H:i:s'),
            ],
            [
                'name'=>'养猪技术大全U盘版',
                'price'=>298,
                'category_id'=>1,
                'created_at'=>date('Y/m/d H:i:s'),
                'updated_at'=>date('Y/m/d H:i:s'),
            ],
            [
                'name'=>'养猪搭配套餐',
                'price'=>500,
                'category_id'=>1,
                'created_at'=>date('Y/m/d H:i:s'),
                'updated_at'=>date('Y/m/d H:i:s'),
            ],
        ]);
    }
}
