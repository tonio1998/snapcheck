<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Classes;
use App\Traits\TCommonFunctions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ClassController extends Controller
{
    use TCommonFunctions;
    public function index()
    {
        return Classes::with('user')->where('user_id', Auth::id())->get();
    }


    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            // 'subject' => 'required|string|max:255',
        ]);

        $class = new Classes($validated);
        $class->user_id = Auth::id();
        $this->setCommonFields($class);
        $class->save();

        return response()->json($class, 201);
    }


    public function show($id)
    {
        $class = Classes::where('id', $id)->where('user_id', Auth::id())->first();

        if (!$class) {
            return response()->json(['message' => 'Class not found'], 404);
        }

        return response()->json($class);
    }

    public function update(Request $request, $id)
    {
        $class = Classes::where('id', $id)->where('user_id', Auth::id())->first();

        if (!$class) {
            return response()->json(['message' => 'Class not found'], 404);
        }

        $validated = $request->validate([
            'name' => 'required|string|max:255',
            // 'subject' => 'required|string|max:255',
        ]);

        $class->update([
            ...$validated,
            'updated_by' => Auth::id(),
        ]);

        return response()->json($class);
    }

    public function destroy($id)
    {
        $class = Classes::where('id', $id)->where('user_id', Auth::id())->first();

        if (!$class) {
            return response()->json(['message' => 'Class not found'], 404);
        }

        $class->delete();

        return response()->json(['message' => 'Class deleted']);
    }
}
