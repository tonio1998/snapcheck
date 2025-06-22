<?php

namespace Database\Seeders;

use App\Models\Classes;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ClassroomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 1; $i <= 30; $i++) {
            Classes::create([
                'user_id'    => rand(1, 5), // assumes you have users with IDs 1-5
                'name'       => 'Classes ' . $i,
                'subject'    => 'Subject ' . $i,
                'created_by' => 1,
                'updated_by' => 1,
                'created_at' => now(),
                'status'     => 'active',
                'archived'   => false,
            ]);
        }
    }
}
