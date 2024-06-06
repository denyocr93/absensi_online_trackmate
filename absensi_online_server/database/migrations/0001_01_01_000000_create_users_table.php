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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->timestamps();
            $table->integer('company_id');
            $table->string('role');
            $table->string('department')->nullable();
            $table->string('photo')->nullable();
            $table->string('status');
        });

        Schema::create('password_reset_tokens', function (Blueprint $table) {
            $table->string('email')->primary();
            $table->string('token');
            $table->timestamp('created_at')->nullable();
        });

        Schema::create('sessions', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->foreignId('user_id')->nullable()->index();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->longText('payload');
            $table->integer('last_activity')->index();
        });


        // Create Companies table
        Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->string('company_name');
            $table->text('description')->nullable();
            $table->string('photo')->nullable();
            $table->string('address');
            $table->double('latitude');
            $table->double('longitude');
            $table->string('working_hour_start')->nullable();
            $table->string('working_hour_end')->nullable();
            $table->string('status');
            $table->timestamps();
        });

        // Create AttendanceHistories table
        Schema::create('attendance_histories', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->double('check_in_latitude');
            $table->double('check_in_longitude');
            $table->string('check_in_photo')->nullable();
            $table->dateTime('check_in_date');
            $table->double('check_out_latitude')->nullable();
            $table->double('check_out_longitude')->nullable();
            $table->string('check_out_photo')->nullable();
            $table->dateTime('check_out_date')->nullable();
            $table->string('working_hour')->nullable();
            $table->string('status');
            $table->timestamps();
        });

        // Create UserRequestHistories table
        Schema::create('user_request_histories', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->integer('company_id');
            $table->string('request_type');
            $table->dateTime('request_date');
            $table->double('amount')->nullable();
            $table->text('description')->nullable();
            $table->string('attachment')->nullable();
            $table->string('status');
            $table->dateTime('update_status_date')->nullable();
            $table->integer('approved_by')->nullable();
            $table->integer('rejected_by')->nullable();
            $table->text('rejected_note')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('password_reset_tokens');
        Schema::dropIfExists('sessions');
    }
};
