<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    // data user company A => HRD Company A
    // data user company B => HRD Company B
    public function index(Request $request)
    {
        $current_user = Auth::user();

        $query = User::where('company_id', $current_user->company_id);

        // Menerapkan sort jika parameter sort_field dan sort_type tersedia
        if ($request->has('sort_field') && $request->has('sort_type')) {
            $sortField = $request->sort_field;
            $sortDirection = $request->sort_type;

            $query->orderBy($sortField, $sortDirection);
        }

        // Menentukan jumlah data per halaman (limit)
        $limit = $request->has('limit') ? (int)$request->limit : 10;

        if ($limit > 50) {
            $limit = 50;
        }

        // Mengambil data dengan pembatasan jumlah menggunakan paginate
        $users = $query->paginate($limit);

        return response()->json(['users' => $users], 200);
    }

    public function store(Request $request)
    {
        $current_user = Auth::user();
        $company_id = $current_user->company_id;

        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required',
            'role' => 'required',
            'status' => 'required',
        ]);


        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $data = $request->all();
        $data["company_id"] = $company_id;
        $user = User::create($data);
        return response()->json(['user' => $user], 201);
    }

    public function show($id)
    {
        $current_user = Auth::user();
        $company_id = $current_user->company_id;

        $user = User::where(
            "id",
            $id,
        )->where("company_id", $company_id)->first();

        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        return response()->json(['user' => $user], 200);
    }

    public function update(Request $request, $id)
    {
        $current_user = Auth::user();
        $company_id = $current_user->company_id;

        $validator = Validator::make($request->all(), [
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $user = User::where(
            "id",
            $id,
        )->where("company_id", $company_id)->first();
       
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }

        $data = $request->all();
        $data["company_id"] = $company_id;
        $user->update($data);
        return response()->json(['user' => $user], 200);
    }

    public function destroy($id)
    {
        $current_user = Auth::user();
        $company_id = $current_user->company_id;
        $user = User::where(
            "id",
            $id,
        )->where("company_id", $company_id)->first();
        
        if (!$user) {
            return response()->json(['error' => 'User not found'], 404);
        }
        $user->delete();
        return response()->json(['message' => 'User deleted successfully'], 200);
    }
}
