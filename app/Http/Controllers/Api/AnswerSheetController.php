<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Quiz;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class AnswerSheetController extends Controller
{
    public function generate(Request $request, $id)
    {
        $quiz = Quiz::with('questions')->findOrFail($id);
        $totalItems = $quiz->total_items;

        $timestamp = now()->format('Ymd_His'); 

        return Pdf::loadView('pdf.answer_sheet', [
            'quiz' => $quiz,
            'questions' => $quiz->questions,
            'totalItems' => $totalItems
        ])
        ->setPaper('A4', 'landscape')
        ->stream("answersheet-quiz{$quiz->id}-{$timestamp}.pdf");
    }

}
