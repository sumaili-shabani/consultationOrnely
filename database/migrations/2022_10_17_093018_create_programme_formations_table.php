<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProgrammeFormationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('programme_formations', function (Blueprint $table) {
            $table->id();
            $table->integer('cour_id');
            $table->string('date_debit', 250)->nullable();
            $table->string('date_fin', 250)->nullable();
            $table->string('etat', 250)->nullable();
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
        Schema::dropIfExists('programme_formations');
    }
}
