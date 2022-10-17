<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCoursTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cours', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned();
            $table->string('nonCours', 250)->nullable();
            $table->text('description')->nullable();
            $table->string('image', 250)->nullable();
            $table->string('file', 250)->nullable();

            $table->text('prerequis')->nullable();
            $table->text('objectif')->nullable();
            $table->integer('nbrHeure')->nullable();

            $table->foreign('user_id')->references("id")->on("users");
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
        Schema::dropIfExists('cours');
    }
}
