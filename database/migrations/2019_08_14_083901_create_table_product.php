<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableProduct extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_product', function (Blueprint $table) {
            $table->bigIncrements('prod_id');
            $table->string('prod_name');
            $table->string('prod_slug');
            $table->string('prod_code');
            $table->integer('prod_price');
            $table->string('prod_image');
            $table->bigInteger('prod_category')->unsigned();
            $table->string('prod_detail');
            $table->integer('prod_sale');
            $table->text('prod_description');
            $table->timestamps();
            $table->foreign('prod_category')->references('cate_id')->on('tbl_category')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_product');
    }
}
