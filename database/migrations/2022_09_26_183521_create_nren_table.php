<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNrenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nren', function (Blueprint $table) {
            $table->id();
            $table->string('userid');
            $table->string('nren');
            $table->string('networkname');
            $table->string('country');
            $table->string('website');
            $table->longtext('address');
            $table->string('generalemail');
            $table->string('tel');
            $table->string('fax');
            $table->string('yearofcreation');
            $table->longText('relationshipwithgovernment')->nullable();
            $table->longText('legalentitytype')->nullable();
            $table->longText('governance');
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
        Schema::dropIfExists('nren');
    }
}
