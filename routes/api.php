<?php

use App\Http\Controllers\Api\AnswerSheetController;
use App\Http\Controllers\Api\QuizController;
use App\Http\Controllers\Api\ClassroomController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->get('/user/profile', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->group(function () {
    Route::prefix('classes')->name('classes.')->group(function () {
        Route::get('/', [ClassroomController::class, 'index'])->name('index');
        Route::post('/', [ClassroomController::class, 'store'])->name('store');
        Route::get('{id}', [ClassroomController::class, 'show'])->name('show');
        Route::put('{id}', [ClassroomController::class, 'update'])->name('update');
        Route::delete('{id}', [ClassroomController::class, 'destroy'])->name('destroy');
        Route::post('list', [ClassroomController::class, 'list'])->name('add-student');
    });

    Route::prefix('quizzes')->name('quizzes.')->group(function () {
        Route::get('/', [QuizController::class, 'index'])->name('index');
        Route::post('/', [QuizController::class, 'store'])->name('store');
        Route::get('{id}', [QuizController::class, 'show'])->name('show');
        Route::put('{id}', [QuizController::class, 'update'])->name('update');
        Route::delete('{id}', [QuizController::class, 'destroy'])->name('destroy');

        Route::post('/{id}/update-keys', [QuizController::class, 'updateKeys']);

    });
});


Route::post('/login', function (Request $request) {

    $user = User::where('email', $request->email)->first();

    if (!$user || !Hash::check($request->password, $user->password)) {
        return response()->json(['message' => 'Invalid credentials'], 401);
    }

    return response()->json([
        'token' => $user->createToken('mobile')->plainTextToken,
        'user' => $user
    ]);
});

Route::post('/register', function (Request $request) {
    $validated = $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|unique:users,email',
        'password' => 'required|string|min:6',
    ]);

    $user = User::create([
        'name' => $validated['name'],
        'email' => $validated['email'],
        'password' => Hash::make($validated['password']),
    ]);

    return response()->json([
        'token' => $user->createToken('mobile')->plainTextToken,
        'user' => $user
    ]);
});
