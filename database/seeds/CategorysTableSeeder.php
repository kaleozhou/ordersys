<?php

use Illuminate\Database\Seeder;

class CategorysTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('categorys')->insert([
        'name'=>'电器类',
        'value'=>'电器类',
        'created_at'=>date('Y/m/d H:i:s'),
        'updated_at'=>date('Y/m/d H:i:s'),
    ]);
    }
}
