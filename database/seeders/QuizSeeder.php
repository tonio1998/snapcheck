<?php

namespace Database\Seeders;

use App\Models\Quiz;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class QuizSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for ($i = 1; $i <= 100; $i++) {
            Quiz::create([
                'class_id'    => rand(1, 30),
                'user_id'       => rand(0,5),
                'title'       => 'Quiz ' . $i,
                'total_items' => collect(range(10, 150, 10))->random(),
                'created_by' => rand(0,5),
                'updated_by' => rand(0,5),
                'created_at' => now(),
                'status'     => 'active',
                'archived'   => false,
            ]);
        }
    }
}
