<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Quiz;
use Illuminate\Http\Request;

class QuizController extends Controller
{
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


    public function store(Request $request)
    {
        $validated = $request->validate([
            'class_id' => 'required|exists:classes,id',
            'user_id' => 'required|exists:users,id',
            'title' => 'required|string',
            'total_items' => 'required|integer',
            'quiz_date' => 'required'
        ]);

        $class = new Quiz($validated);
        $class->user_id = Auth::id();
        $this->setCommonFields($class);
        $class->save();

        return response()->json($quiz, 201);
    }

    public function show($id)
    {
        return Quiz::with('questions')->findOrFail($id);
    }

    public function update(Request $request, $id)
    {
        $quiz = Quiz::findOrFail($id);

        $validated = $request->validate([
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
