<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('product_id');
            $table->string('product_name');
            $table->string('ordnumber')->unique();
            $table->string('tradenumber')->nullable();
            $table->string('attributesinfo')->nullable();
            $table->integer('customer_id');
            $table->integer('num')->default(1);
            $table->decimal('amount',5,2);
            $table->string('paymethon')->nullable();
            $table->string('remark')->nullable();
            $table->boolean('ifpayed')->default(false);
            $table->integer('status')->default(0);
        
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
