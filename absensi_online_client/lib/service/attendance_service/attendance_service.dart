import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/get_attendance_status_today_response.dart';

class AttendanceService {
  Future<void> checkIn({
    required String photo,
    required double latitude,
    required double longitude,
  }) async {
    try {
      var data = {
        "photo": photo,
        "latitude": latitude,
        "longitude": longitude,
      };
      printg(data.toString());

      var response = await Dio().post(
        "$baseUrl/api/attendance-histories/check-in",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: data,
      );
      print(response);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> checkOut({
    required String photo,
    required double latitude,
    required double longitude,
  }) async {
    try {
      var data = {
        "photo": photo,
        "latitude": latitude,
        "longitude": longitude,
      };
      printg(data.toString());

      var response = await Dio().post(
        "$baseUrl/api/attendance-histories/check-out",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: data,
      );
      print(response);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> reset() async {
    try {
      await Dio().post(
        "$baseUrl/api/attendance-histories/reset-attendance-today",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<GetAttendanceStatusTodayResponse?> getAttendanceStatusToday() async {
    try {
      var response = await Dio().post(
        "$baseUrl/api/attendance-histories/check-in-and-out-status-today",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
      );
      printg(response.data.toString());
      var res = GetAttendanceStatusTodayResponse.fromJson(response.data);
      printg("${res.data != null}");
      printg("checkInDate: ${res.data?.checkInDate}");
      printg("checkOutDate: ${res.data?.checkOutDate}");
      return res;
    } on Exception catch (err) {
      printr(err.toString());
      throw Exception(err);
    }
  }
}
