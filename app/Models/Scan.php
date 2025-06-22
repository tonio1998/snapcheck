<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Scan extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'student_id', 'quiz_id', 'scanned_at', 'score', 'is_correct', 'is_reviewed',
        'created_by', 'updated_by', 'created_at',
        'status', 'archived'
    ];

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function quiz()
    {
        return $this->belongsTo(Quiz::class);
    }

    public function answers()
    {
        return $this->hasMany(StudentAnswer::class);
    }
}
