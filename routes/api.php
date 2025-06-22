<?php

use App\Http\Controllers\Api\AnswerSheetController;
use App\Http\Controllers\Api\QuizController;
use App\Http\Controllers\Api\ClassController;
use App\Models\User;
use App\Models\Quiz;
use App\Models\Scan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;
use Carbon\Carbon;

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
    Route::get('/dashboard', function (Request $request) {
        $userId = $request->user()->id;

        $quizzes = Quiz::where('user_id', $userId)->get();
        $quizIds = $quizzes->pluck('id');

        $totalScans = Scan::whereIn('quiz_id', $quizIds)->count();

        $today = Carbon::today();
        $yesterday = Carbon::yesterday();

        // ✅ Today stats
        $scansToday = Scan::whereIn('quiz_id', $quizIds)->whereDate('created_at', $today)->count();
        $quizzesToday = Quiz::where('user_id', $userId)->whereDate('created_at', $today)->count();
        $avgScoreToday = Scan::whereIn('quiz_id', $quizIds)->whereDate('created_at', $today)->avg('score') ?? 0;
        $participantsToday = Scan::whereIn('quiz_id', $quizIds)->whereDate('created_at', $today)->distinct('student_id')->count('student_id');

        // ✅ Yesterday stats
        $scansYesterday = Scan::whereIn('quiz_id', $quizIds)->whereDate('created_at', $yesterday)->count();
        $quizzesYesterday = Quiz::where('user_id', $userId)->whereDate('created_at', $yesterday)->count();
        $avgScoreYesterday = Scan::whereIn('quiz_id', $quizIds)->whereDate('created_at', $yesterday)->avg('score') ?? 0;
        $participantsYesterday = Scan::whereIn('quiz_id', $quizIds)->whereDate('created_at', $yesterday)->distinct('student_id')->count('student_id');

        // ✅ Change calculator
        function percentChange($today, $yesterday) {
            if ($yesterday == 0) return $today > 0 ? '+100%' : '0%';
            $change = (($today - $yesterday) / $yesterday) * 100;
            return ($change >= 0 ? '+' : '') . round($change, 1) . '%';
        }

        $scanChange = percentChange($scansToday, $scansYesterday);
        $quizChange = percentChange($quizzesToday, $quizzesYesterday);
        $avgScoreChange = percentChange($avgScoreToday, $avgScoreYesterday);
        $participantChange = percentChange($participantsToday, $participantsYesterday);

        // ✅ Other data
        $gradedToday = Scan::whereIn('quiz_id', $quizIds)
            ->where('is_reviewed', 1)
            ->whereDate('updated_at', $today)
            ->count();

        $pendingReviews = Scan::whereIn('quiz_id', $quizIds)
            ->where(function ($q) {
                $q->whereNull('is_reviewed')->orWhere('is_reviewed', 0);
            })->count();

        $quizzesCreated = $quizzes->count();
        $participants = Scan::whereIn('quiz_id', $quizIds)->distinct('student_id')->count('student_id');
        $avgScore = Scan::whereIn('quiz_id', $quizIds)->avg('score') ?? 0;

        return response()->json([
            'total_scans' => $totalScans,
            'scan_change' => $scanChange,
            'updated_at' => now(),

            'weekly_stats' => [
                [
                    'label' => 'Quizzes Created',
                    'value' => $quizzesCreated,
                    'change' => $quizChange,
                    'icon' => 'document-outline'
                ],
                [
                    'label' => 'Avg. Score',
                    'value' => round($avgScore, 1) . '%',
                    'change' => $avgScoreChange,
                    'icon' => 'stats-chart-outline'
                ],
                [
                    'label' => 'Participants',
                    'value' => $participants,
                    'change' => $participantChange,
                    'icon' => 'people-outline'
                ],
            ],

            'daily_updates' => [
                [
                    'label' => 'Graded Today',
                    'value' => $gradedToday,
                    'date' => $today->toDateString(),
                    'icon' => 'checkmark-done',
                    'color' => '#4caf50',
                ],
                [
                    'label' => 'Pending Reviews',
                    'value' => $pendingReviews,
                    'date' => $today->toDateString(),
                    'icon' => 'hourglass-outline',
                    'color' => '#ffa000',
                ],
            ],
        ]);
    });

    Route::prefix('classes')->name('classes.')->group(function () {
        Route::get('/', [ClassController::class, 'index'])->name('index');
        Route::post('/', [ClassController::class, 'store'])->name('store');
        Route::get('{id}', [ClassController::class, 'show'])->name('show');
        Route::put('{id}', [ClassController::class, 'update'])->name('update');
        Route::delete('{id}', [ClassController::class, 'destroy'])->name('destroy');
        Route::post('list', [ClassController::class, 'list'])->name('add-student');
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
