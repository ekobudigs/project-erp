<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('spkos', function (Blueprint $table) {
            $table->bigIncrements('id_spko');
            $table->text('remarks');
            $table->integer('employee');
            $table->date('trans_date');
            $table->string('process', 10);
            $table->string('sw', 25);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('spkos');
    }
};
