<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;

Route::get('/', [PostController::class, 'create']);
Route::get('/customer/createPage', [PostController::class, 'create'])->name('post#createPage');
Route::post('/post/create', [PostController::class, 'postCreate'])->name('post#create');
Route::get('/post/delete/{id}', [PostController::class, 'postDelete'])->name('post#delete');
Route::get('/post/detail/{id}', [PostController::class, 'postDetail'])->name('post#detail');
Route::get('/post/updatePage/{id}', [PostController::class, 'updatePage'])->name('post#updatePage');
Route::post('/post/update', [PostController::class, 'update'])->name('post#update');
