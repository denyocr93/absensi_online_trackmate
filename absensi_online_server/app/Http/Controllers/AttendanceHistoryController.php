<?php

namespace App\Http\Controllers;

use App\Helpers\URLDownloader;
use App\Models\AttendanceHistory;
use App\Models\User;
use App\Services\FaceRecognitionService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AttendanceHistoryController extends Controller
{
    public function index(Request $request)
    {
        // Mengambil data riwayat kehadiran berdasarkan user yang sedang login
        $attendanceHistories = AttendanceHistory::where('user_id', Auth::id())->latest()->paginate($request->input('per_page', 10));

        // Mengembalikan data dalam bentuk response JSON
        return response()->json($attendanceHistories);
    }


    public function checkIn(Request $request)
    {
        // Memeriksa apakah pengguna telah melakukan check-in hari ini
        $existingCheckIn = AttendanceHistory::where('user_id', Auth::id())
            ->whereDate('check_in_date', now()->toDateString())
            ->first();


        // Jika pengguna sudah melakukan check-in hari ini, kembalikan pesan error
        if ($existingCheckIn) {
            return response()->json(['error' => 'You have already checked in today'], 400);
        }

        //Check apakah wajah dikenali atau tidak
        $user =  User::find(Auth::id());
        if ($user->photo == null) {
            return response()->json(['message' => 'Please train a photo'], 400);
        }

        $current_user_photo = URLDownloader::download($user->photo);
        $current_user_uploaded_photo = URLDownloader::download($request->input('photo'));

        $isRecognized =  FaceRecognitionService::recognize($current_user_photo, $current_user_uploaded_photo);
        if ($isRecognized == false) {
            return response()->json(['error' => 'Unrecognized'], 400);
        }

        // Jika belum, buat data baru untuk check-in
        $checkInData = [
            'user_id' => Auth::id(),
            'check_in_latitude' => $request->input('latitude'),
            'check_in_longitude' => $request->input('longitude'),
            'check_in_photo' => $request->input('photo'),
            'check_in_date' => now(),
            'status' => 'checked_in'
        ];

        // Menyimpan data kehadiran check-in dalam database
        AttendanceHistory::create($checkInData);

        // Mengembalikan respons berhasil
        return response()->json(['message' => 'Check-in success']);
    }


    public function checkOut(Request $request)
    {
        // Memeriksa apakah pengguna telah melakukan check-out hari ini
        $existingCheckOut = AttendanceHistory::where('user_id', Auth::id())
            ->whereDate('check_in_date', now()->toDateString())
            ->whereNotNull('check_out_date')
            ->first();

        // Jika pengguna sudah melakukan check-out hari ini, kembalikan pesan error
        if ($existingCheckOut) {
            return response()->json(['error' => 'You have already checked out today'], 400);
        }

        // Mendapatkan data kehadiran terakhir untuk user yang sedang login hari ini
        $lastAttendance = AttendanceHistory::where('user_id', Auth::id())
            ->whereDate('check_in_date', now()->toDateString())
            ->latest()
            ->first();

        // Memastikan user telah melakukan check-in sebelum melakukan check-out
        if ($lastAttendance && $lastAttendance->status === 'checked_in') {
            // Melakukan check-out

            //Check apakah wajah dikenali atau tidak
            $user =  User::find(Auth::id());
            $current_user_photo = URLDownloader::download($user->photo);
            $current_user_uploaded_photo = URLDownloader::download($request->input('photo'));
            $isRecognized =  FaceRecognitionService::recognize($current_user_photo, $current_user_uploaded_photo);
            if ($isRecognized == false) {
                return response()->json(['error' => 'Unrecognized'], 400);
            }

            $lastAttendance->update([
                'check_out_latitude' => $request->input('latitude'),
                'check_out_longitude' => $request->input('longitude'),
                'check_out_photo' => $request->input('photo'),
                'check_out_date' => now(),
                'status' => 'checked_out'
            ]);

            // Mengembalikan respons berhasil
            return response()->json(['message' => 'Check-out success']);
        }

        // Mengembalikan respons error jika user belum melakukan check-in sebelumnya
        return response()->json(['error' => 'Please check-in before checking out'], 400);
    }


    public function checkInAndCheckoutStatusToday(Request $request)
    {
        // Mendapatkan status check-in dan check-out untuk user yang sedang login hari ini
        $todayAttendance = AttendanceHistory::where('user_id', Auth::id())->whereDate('check_in_date', now()->toDateString())->latest()->first();

        // Mengembalikan respons dalam bentuk JSON
        return response()->json($todayAttendance);
    }

    public function resetAttendanceToday(Request $request)
    {
        // Menghapus data kehadiran user yang sedang login hari ini
        AttendanceHistory::where('user_id', Auth::id())->whereDate('check_in_date', now()->toDateString())->delete();

        // Mengembalikan respons berhasil
        return response()->json(['message' => 'Attendance reset successfully']);
    }
}
