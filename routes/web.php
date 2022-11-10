<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\infocontroller;

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
//https://surveys.ubuntunet.net/index.php/282136?lang=en
//1QylATPkhOrngei
Route::admineticAuth(['register' => false]);

Route::get('/infoadd', [infocontroller::class, 'index'])->name('infoadd');
Route::get('/infoview', [infocontroller::class, 'show'])->name('infoview');
Route::post('/addinfo', [infocontroller::class, 'store'])->name('addinfo');
Route::post('/destroyinfo', [infocontroller::class, 'destroy'])->name('destroyinfo');
Route::get('/infodetails/{id}', [infocontroller::class, 'details'])->name('infodetails');
Route::post('/addquestion', [infocontroller::class, 'addquestion'])->name('addquestion');
Route::get('/answers', [infocontroller::class, 'answers'])->name('answers');
Route::get('/addanswers/{id}', [infocontroller::class, 'addanswers'])->name('addanswers');
Route::post('/respond', [infocontroller::class, 'respond'])->name('respond');
Route::post('/status', [infocontroller::class, 'status'])->name('status');
Route::get('/view/{survey}/{user}/{year}/{name}', [infocontroller::class, 'view'])->name('view');
Route::get('admin/dashboard', [infocontroller::class, 'dashboard'])->name('dashboard');
Route::get('home', [infocontroller::class, 'dashboard'])->name('dashboard');
Route::get('/dashboard', [infocontroller::class, 'dashboard'])->name('home');
Route::get('/replies', [infocontroller::class, 'replies'])->name('replies');
Route::post('/nren', [infocontroller::class, 'nren'])->name('nren');
Route::get('/nrenreports', [infocontroller::class, 'nrenreports'])->name('nrenreports');
Route::get('/reports', [infocontroller::class, 'reports'])->name('reports');
Route::get('/viewreport', [infocontroller::class, 'reports'])->name('viewreport');
Route::post('/upload', [infocontroller::class, 'upload'])->name('upload');
Route::get('/nreninfo', [infocontroller::class, 'nreninfo'])->name('nreninfo');
Route::get('/assignnren', [infocontroller::class, 'assignnren'])->name('assignnren');
Route::get('/nrenedit/{id}', [infocontroller::class, 'nrenedit'])->name('nrenedit');
Route::get('/nrenadd', [infocontroller::class, 'nrenadd'])->name('nrenadd');
Route::get('/reassignnren', [infocontroller::class, 'reassignnren'])->name('reassignnren');
Route::post('/destroynren', [infocontroller::class, 'destroynren'])->name('destroynren');
Route::get('/exportnren/{values}', [infocontroller::class, 'exportnren'])->name('exportnren');
Route::get('/exportall/{values}', [infocontroller::class, 'exportall'])->name('exportall');

