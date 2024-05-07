<?php

namespace Database\Seeders;

use App\Models\Company;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Membuat 3 perusahaan
        $companies = [
            [
                'company_name' => 'Alphawave Inc.',
                'description' => 'Leading technology solutions provider.',
                'photo' => null,
                'address' => '123 Main Street',
                'latitude' => 40.7128, // Contoh koordinat latitude
                'longitude' => -74.0060, // Contoh koordinat longitude
                'working_hour_start' => '08:00',
                'working_hour_end' => '17:00',
                'status' => 'Active',
            ],
            [
                'company_name' => 'InnovateHub Ltd.',
                'description' => 'Driving innovation in various industries.',
                'photo' => null,
                'address' => '456 Elm Street',
                'latitude' => 34.0522, // Contoh koordinat latitude
                'longitude' => -118.2437, // Contoh koordinat longitude
                'working_hour_start' => '09:00',
                'working_hour_end' => '18:00',
                'status' => 'Active',
            ],
            // Tambahkan perusahaan lainnya jika diperlukan
        ];

        foreach ($companies as $companyData) {
            $company = Company::create($companyData);

            $companyDomain = strtolower(str_replace(' ', '', $company->company_name));
            $companyDomain = strtolower(str_replace('.', '', $companyDomain));

            for ($i = 1; $i <= 2; $i++) {
                User::create([
                    'name' => 'HRD ' . $i,
                    'email' => "hrd$i.$companyDomain@demo.com",
                    'password' => bcrypt('123456'), // Anda bisa menggunakan fungsi hash untuk password
                    'company_id' => $company->id,
                    'role' => 'HRD',
                    'department' => 'IT',
                    'photo' => null,
                    'status' => 'Active',
                ]);
            }

            for ($i = 1; $i <= 10; $i++) {
                User::create([
                    'name' => 'User ' . $i,
                    'email' => "user$i.$companyDomain@demo.com",
                    'password' => bcrypt('123456'), // Anda bisa menggunakan fungsi hash untuk password
                    'company_id' => $company->id,
                    'role' => 'Employee',
                    'department' => 'IT',
                    'photo' => null,
                    'status' => 'Active',
                ]);
            }
        }
    }
}
