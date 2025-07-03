<?php

use Inertia\Inertia;
use Illuminate\Support\Facades\Route;

Route::get('/sobre', function () {
    return Inertia::render('Sobre');
});

Route::get('/', function () {
    return Inertia::render('Home');
});