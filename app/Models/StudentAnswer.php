<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class StudentAnswer extends Model
{
    use SoftDeletes;
    protected $fillable = [
        'scan_id', 'question_no', 'selected_answer', 'is_correct',
        'created_by', 'updated_by', 'created_at',
        'status', 'archived'
    ];

    public function scan()
    {
        return $this->belongsTo(Scan::class);
    }
}
