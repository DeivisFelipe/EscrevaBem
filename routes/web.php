<?php

use Inertia\Inertia;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

Route::get('/sobre', function () {
    return Inertia::render('Sobre');
});

Route::get('/', function () {
    return Inertia::render('Home');
});

Route::post('/login', function (Request $request) {
    $response = Http::asForm()->post(env('APP_URL') . '/oauth/token', [
        'grant_type' => 'password',
        'client_id' => env('PASSWORD_CLIENT_ID'),
        'client_secret' => env('PASSWORD_CLIENT_SECRET'),
        'username' => $request->email,
        'password' => $request->password,
        'scope' => '',
    ]);

    return $response->json();
});