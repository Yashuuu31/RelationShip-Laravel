<?php

use App\Http\Controllers\RelationShipController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



Route::get('/', [RelationShipController::class, 'index']);
Route::get('relation_ship/one_to_one', [RelationShipController::class, 'OneToOne'])->name('one_to_one');
Route::get('relation_ship/one_to_many', [RelationShipController::class, 'OneToMany'])->name('one_to_many');
Route::get('relation_ship/one_to_one_belong', [RelationShipController::class, 'OneToOneBelong'])->name('one_to_one_belong');
Route::get('relation_ship/has_one_through', [RelationShipController::class, 'HasOneThrough'])->name('has_one_through');
Route::get('relation_ship/has_many_through', [RelationShipController::class, 'HasManyThrough'])->name('has_many_through');

Route::get('relation_ship/one_to_oneP', [RelationShipController::class, 'OneToOneP'])->name('one_to_oneP');
