<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOrderDetail extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_order_detail', function (Blueprint $table) {
            $table->bigIncrements('ordt_id');
            $table->bigInteger('ordt_order_id')->unsigned();
            $table->bigInteger('ordt_product_id')->unsigned();
            $table->integer('ordt_numbers');
            $table->integer('ordt_price');
            $table->integer('ordt_total_price');
            $table->timestamps();
            $table->foreign('ordt_order_id')->references('ord_id')->on('tbl_order')->onDelete('cascade');
            $table->foreign('ordt_product_id')->references('prod_id')->on('tbl_product')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_order_detail');
    }
}
