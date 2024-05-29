import 'package:dio/dio.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/env.dart';
import 'package:hyper_ui/model/get_company_by_id_response.dart';
import 'package:hyper_ui/model/get_user_by_id_response.dart';
import 'package:hyper_ui/model/get_user_request_history_response.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/shared/util/log/log.dart';

class UserRequestHistoryService {
  Future<GetUserRequestHistoryResponse> getHistories({
    int page = 1,
    required String requestType,
    required String status,
  }) async {
    try {
      var response = await Dio().get(
        "$baseUrl/api/user-request-histories?page=$page&request_type=$requestType&status=$status",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
      );
      return GetUserRequestHistoryResponse.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> create({
    required String requestType,
    String? attachment,
    DateTime? requestDate,
    String? description,
    double? amount,
  }) async {
    try {
      await Dio().post(
        "$baseUrl/api/user-request-histories",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: {
          "request_type": requestType,
          "attachment": attachment,
          "request_date": (requestDate ?? DateTime.now()).yMd,
          "description": description,
          "amount": amount,
          "status": "Pending"
        },
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  //TODO:
  Future<void> approve({
    required int id,
  }) async {
    try {
      await Dio().put(
        "$baseUrl/api/user-request-histories/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: {
          "status": "Approved",
          "update_status_date": DateTime.now().yMd,
        },
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> reject({
    required int id,
    required String rejectedNote,
  }) async {
    try {
      await Dio().put(
        "$baseUrl/api/user-request-histories/$id",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer ${token}"
          },
        ),
        data: {
          "status": "Rejected",
          "rejected_note": rejectedNote,
          "update_status_date": DateTime.now().yMd,
        },
      );
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
