<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableOrder extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_order', function (Blueprint $table) {
            $table->bigIncrements('ord_id');
            $table->bigInteger('ord_userid')->unsigned();
            $table->string('ord_name');
            $table->string('ord_email');
            $table->string('ord_phone',11);
            $table->string('ord_address');
            $table->bigInteger('ord_total_price');
            $table->text('ord_note');
            $table->string('ord_condition');
            $table->string('ord_status');
            $table->timestamps();
            $table->foreign('ord_userid')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_order');
    }
}
