<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Student extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'name', 'student_id', 'class_id',
        'created_by', 'updated_by', 'created_at',
        'status', 'archived'
    ];

    public function class()
    {
        return $this->belongsTo(Classroom::class, 'class_id');
    }

    public function scans()
    {
        return $this->hasMany(Scan::class);
    }
}
