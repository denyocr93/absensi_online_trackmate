import 'package:dio/dio.dart';
import 'package:hyper_ui/env.dart';
import 'package:hyper_ui/model/get_company_by_id_response.dart';
import 'package:hyper_ui/model/get_user_by_id_response.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/shared/util/log/log.dart';

class CompanyService {
  Future<GetCompanyByIdResponse> getCompanyByID(int id) async {
    printr("ID: ${id}");
    try {
      var response = await Dio().get(
        "$baseUrl/api/companies/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
      );
      printg(response.data.toString());
      return GetCompanyByIdResponse.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> update({
    required int id,
    String? photo,
    String? companyName,
    String? address,
    String? description,
    double? latitude,
    double? longitude,
    String? workingHourStart,
    String? workingHourEnd,
  }) async {
    try {
      await Dio().put(
        "$baseUrl/api/companies/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: {
          "photo": photo,
          "company_name": companyName,
          "description": description,
          "address": address,
          "latitude": latitude,
          "longitude": longitude,
          "working_hour_start": workingHourStart,
          "working_hour_end": workingHourEnd,
        },
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
