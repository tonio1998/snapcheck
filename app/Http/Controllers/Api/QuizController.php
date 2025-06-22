<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Quiz;
use App\Models\QuizQuestion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Traits\TCommonFunctions;
use Illuminate\Support\Facades\DB;

class QuizController extends Controller
{
    use TCommonFunctions;
    public function index()
    {
        $userId = auth()->id();

        return Quiz::with(['class', 'user'])
            ->where('archived', 0)
            ->whereHas('class', function ($query) use ($userId) {
                $query->where('user_id', $userId);
            })
            ->get();
    }


   public function updateKeys(Request $request, $quizId)
    {
        $keys = $request->input('keys');
        $points = $request->input('points');

        if (!is_array($keys) || !is_array($points)) {
            return response()->json(['error' => 'Invalid data format.'], 422);
        }

        DB::beginTransaction();

        try {
            foreach ($keys as $index => $keyData) {
                $questionNo = (int)($keyData['question_no'] ?? $index + 1);
                $answer = $keyData['value'] ?? '';

                $pointsData = $points[$index] ?? [];
                $score = isset($pointsData['value']) ? (int)$pointsData['value'] : 1;

                $question = QuizQuestion::where('quiz_id', $quizId)
                    ->where('question_no', $questionNo)
                    ->first();

                if ($question) {
                    // Update existing
                    $question->update([
                        'correct_answer' => $answer,
                        'points' => $score,
                    ]);
                } else {
                    // Create new
                    $newQuestion = new QuizQuestion();
                    $newQuestion->quiz_id = $quizId;
                    $newQuestion->question_no = $questionNo;
                    $newQuestion->correct_answer = $answer;
                    $newQuestion->points = $score;
                    $this->setCommonFields($newQuestion);
                    $newQuestion->save();
                }
            }

            DB::commit();
            return response()->json(['message' => 'Answer keys updated successfully.']);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json([
                'error' => 'Something went wrong.',
                'details' => $e->getMessage(),
            ], 500);
        }
    }



    public function store(Request $request)
    {
        $validated = $request->validate([
            'class_id' => 'required|exists:classes,id',
            'title' => 'required|string',
            'total_items' => 'required|integer',
            'quiz_date' => 'required'
        ]);

        $quiz = new Quiz($validated);
        $quiz->user_id = Auth::id();
        $this->setCommonFields($quiz);
        $quiz->save();

        for($i = 1; $i <= $quiz->total_items; $i++){
            $quizAns = new QuizQuestion();
            $quizAns->quiz_id = $quiz->id;
            $quizAns->question_no = $i;
            $quizAns->correct_answer = '';
            $quizAns->points = 1;
            $this->setCommonFields($quizAns);
            $quizAns->save();
        }

        return response()->json($quiz, 201);
    }

    public function show($id)
    {
        return Quiz::with(['questions', 'class'])->findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $quiz = Quiz::findOrFail($id);

        $validated = $request->validate([
            'class_id' => 'sometimes|exists:classes,id',
            'title' => 'sometimes|string',
            'total_items' => 'sometimes|integer',
            'quiz_date' => 'required'
        ]);

        $quiz->update([
            ...$validated,
            'updated_by' => $request->user()->id ?? 1,
        ]);

        return response()->json($quiz);
    }

    public function destroy($id)
    {
        $quiz = Quiz::findOrFail($id);
        $quiz->update(['archived' => 1]);
        $quiz->delete(); // soft delete
        return response()->json(['message' => 'Quiz archived & soft deleted']);
    }
}
