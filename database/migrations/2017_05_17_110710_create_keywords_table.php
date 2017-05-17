<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKeywordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('keywords', function (Blueprint $table) {
            $table->increments('id');
            $table->string('plan')->nullable();
            $table->string('groups')->nullable();
            $table->string('keyword')->nullable();
            $table->string('mode')->nullable();
            $table->string('price')->nullable();
            $table->string('url')->nullable();
            $table->string('mobileurl')->nullable();
            $table->string('level')->nullable();
            $table->string('mobilelevel')->nullable();
            $table->string('status')->nullable();
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
        Schema::dropIfExists('keywords');
    }
}
