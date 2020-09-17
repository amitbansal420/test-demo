<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->string('father_name',255);
            $table->string('mother_name',255);
            $table->string('wife',255);
            $table->string('child',255);
            $table->string('address',255);
            $table->string('country',255);
            $table->string('city',255);
            $table->string('state',255);
            $table->string('zipcode',255);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users_details');
    }
}
