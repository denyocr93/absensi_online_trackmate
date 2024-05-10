import 'package:dio/dio.dart';
import 'package:hyper_ui/env.dart';
import 'package:hyper_ui/model/get_user_by_id_response.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/shared/util/log/log.dart';

class UserService {
  Future<GetUserByIdResponse> getUserByID(int id) async {
    printr("ID: ${id}");
    try {
      var response = await Dio().get(
        "$baseUrl/api/users/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
      );
      return GetUserByIdResponse.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
    required String name,
  }) async {
    try {
      await Dio().put(
        "$baseUrl/api/users/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: {
          "name": name,
        },
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
