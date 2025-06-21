<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Quiz extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'class_id', 'title', 'total_items',
        'created_by', 'updated_by', 'created_at',
        'status', 'archived', 'deleted_at','user_id', 'quiz_date'
    ];

    public function class()
    {
        return $this->belongsTo(Classroom::class, 'class_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function questions()
    {
        return $this->hasMany(QuizQuestion::class);
    }

    public function scans()
    {
        return $this->hasMany(Scan::class);
    }
}
