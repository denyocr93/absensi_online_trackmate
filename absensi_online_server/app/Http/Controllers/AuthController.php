<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            /** @var \App\Models\MyUserModel $user **/
            $user = Auth::user();
            $token = $user->createToken('token-name', ['server:update'])->plainTextToken;
            return response()->json([
                'data' => [
                    'id' => $user->id,
                    'name' => $user->name,
                    'email' => $user->email,
                    'company' => $user->company_id,
                    'role' => $user->role,
                    'department' => $user->department,
                    'photo' => $user->photo,
                    'status' => $user->status,
                    'token' => $token,
                ]
            ]);
        }

        return response()->json([
            "message" => "Wrong email or password"
        ], 401);
    }

    public function logout(Request $request)
    {
        $isSuccess = $request->user()->tokens()->delete();

        if ($isSuccess) {
            return response()->json([
                'message' => 'Successfully logged out'
            ]);
        } else {
            return response()->json([
                'message' => 'Failed to log out'
            ], 400);
        }
    }
}
