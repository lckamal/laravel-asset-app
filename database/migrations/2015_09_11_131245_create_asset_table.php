<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAssetTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assets', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('department_id')->unsigned();
            $table->integer('employee_id')->unsigned();
            $table->integer('category_id')->unsigned();
            $table->integer('vendor_id')->unsigned();
            $table->string('name');
            $table->string('asset_no');
            $table->text('description')->nullable();
            $table->string('model');
            $table->string('serial');
            $table->string('barcode')->nullable();
            $table->date('date_acquired')->nullable();
            $table->date('date_disposed')->nullable();
            $table->float('purchase_price');
            $table->float('salvage_value')->nullable();
            $table->float('location_lat')->nullable();
            $table->float('location_long')->nullable();
            $table->string('image')->nullable();
            $table->enum('status', ['active', 'inactive', 'repair']);
            $table->timestamps();
            
            // $table->foreign('department_id')->references('id')->on('departments')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('assets');
    }
}
