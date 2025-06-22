<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AnswerKey extends Model
{
    use SoftDeletes;

    protected $table = "answer_key";
    protected $fillable = [
        'quiz_id', 'question_no', 'correct_answer',
        'created_by', 'updated_by', 'created_at',
        'status', 'archived', 'points'
    ];

    public function quiz()
    {
        return $this->belongsTo(Quiz::class);
    }
}
