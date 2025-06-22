<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AnswerSheetController;

Route::get('/', function () {
    return view('welcome');
});


Route::prefix('download')->name('download.')->group(function () {
    Route::get('/quiz/{id}/answersheet', [AnswerSheetController::class, 'generate']);
});
