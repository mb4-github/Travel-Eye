<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    // database/migrations/xxxx_xx_xx_create_travel_inspirations_table.php

public function up()
{
    Schema::create('travel_inspirations', function (Blueprint $table) {
        $table->id();
        $table->string('title');
        $table->string('url');
        $table->timestamps();
    });
}
/*
Reverse the migrations.
     */


public function down()
{
    Schema::dropIfExists('travel_inspirations');
}



};
