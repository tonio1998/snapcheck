<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Classroom extends Model
{
    use SoftDeletes;
    protected $table = 'classes';

    protected $fillable = [
        'user_id', 'name', 'subject',
        'created_by', 'updated_by', 'created_at',
        'status', 'archived', 'deleted_at'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function students()
    {
        return $this->hasMany(Student::class);
    }

    public function quizzes()
    {
        return $this->hasMany(Quiz::class);
    }
}
