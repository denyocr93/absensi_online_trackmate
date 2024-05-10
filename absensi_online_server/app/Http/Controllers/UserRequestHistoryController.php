<?php

namespace App\Http\Controllers;

use App\Helpers\URLDownloader;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserRequestHistory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Laravel\Sanctum\PersonalAccessToken;

class UserRequestHistoryController extends Controller
{
    public function index(Request $request)
    {
        $userRequestHistories = UserRequestHistory::paginate($request->limit ?? 10);
        return response()->json(['user_request_histories' => $userRequestHistories], 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'request_type' => 'required',
            'request_date' => 'required|date',
            'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $data = $request->all();
        $token = request()->bearerToken();
        $accessToken = PersonalAccessToken::findToken($token);
        $current_user = $accessToken->tokenable;
        $data['user_id'] = $current_user->id;
        $userRequestHistory = UserRequestHistory::create($data);
        return response()->json(['user_request_history' => $userRequestHistory], 201);
    }

    public function show($id)
    {
        $userRequestHistory = UserRequestHistory::find($id);
        if (!$userRequestHistory) {
            return response()->json(['error' => 'User Request History not found'], 404);
        }
        return response()->json(['user_request_history' => $userRequestHistory], 200);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            // 'user_id' => 'required',
            // 'request_type' => 'required',
            // 'request_date' => 'required|date',
            // 'status' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $userRequestHistory = UserRequestHistory::find($id);
        if (!$userRequestHistory) {
            return response()->json(['error' => 'User Request History not found'], 404);
        }

        $data = $request->all();
        $token = request()->bearerToken();
        $accessToken = PersonalAccessToken::findToken($token);
        $current_user = $accessToken->tokenable;
        if($current_user->role == 'HRD') {
            $data["approved_by"] = $current_user->id;
        }
        $userRequestHistory->update($data);

        //Kalau HRD mengapprove FaceTraining
        //Update photo dari user
        if($userRequestHistory["request_type"] == "FaceTraining" && $data["status"] == "Approved") {
            $user = User::find($userRequestHistory['user_id']);
            $user->update([
                "photo" => $userRequestHistory['attachment']
            ]);
        }

        return response()->json(['user_request_history' => $userRequestHistory], 200);
    }

    public function destroy($id)
    {
        $userRequestHistory = UserRequestHistory::find($id);
        if (!$userRequestHistory) {
            return response()->json(['error' => 'User Request History not found'], 404);
        }
        $userRequestHistory->delete();
        return response()->json(['message' => 'User Request History deleted successfully'], 200);
    }
}
