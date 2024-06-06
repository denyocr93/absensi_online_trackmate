import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/get_attendance_status_today_response.dart';
import 'package:hyper_ui/service/attendance_service/attendance_service.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/service/location_service/location_service.dart';
import 'package:hyper_ui/service/upload_service/upload_service.dart';
import 'package:hyper_ui/service/user_service/user_service.dart';
import 'package:image_picker/image_picker.dart';
import '../state/employee_dashboard_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class EmployeeDashboardController extends Cubit<EmployeeDashboardState>
    implements IBlocBase {
  EmployeeDashboardController() : super(EmployeeDashboardState());

  @override
  void initState() {
    //initState event
    loadData();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  int getFileSizeInBytes(String filePath) {
    File file = File(filePath);
    int fileSizeInBytes = file.lengthSync();
    return fileSizeInBytes;
  }

  loadData() async {
    state.getUserByIdResponse = null;
    emit(state.copyWith());

    state.getUserByIdResponse = await UserService().getUserByID(currentUserID!);
    emit(state.copyWith());

    state.getAttendanceStatusTodayResponse =
        await AttendanceService().getAttendanceStatusToday();
    emit(state.copyWith());
  }

  bool get isCheckedInToday =>
      state.getAttendanceStatusTodayResponse?.data?.checkInDate != null;

  bool get isCheckedOutToday =>
      state.getAttendanceStatusTodayResponse?.data?.checkOutDate != null;

  DateTime? get checkInDate =>
      state.getAttendanceStatusTodayResponse?.data?.checkInDate;

  DateTime? get checkoutDate =>
      state.getAttendanceStatusTodayResponse?.data?.checkOutDate;

  Future<String?> takePhoto() async {
    XFile? image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 40,
      maxWidth: 1024,
    );
    String? filePath = image?.path;
    if (filePath == null) return null;

    int fileSize = getFileSizeInBytes(filePath);
    printg("fileSize: $fileSize Bytes");

    print("Upload photo...");
    var url = await UploadService().uploadToCloudinary(filePath);
    print("Upload photo success $url");
    return url;
  }

  checkIn() async {
    try {
      showLoading();

      print("Check In?");
      String? photoUrl = await takePhoto();
      if (photoUrl == null) {
        hideLoading();
        return;
      }
      print("Get location...");
      var position = await LocationService().getLocation();
      print("Get location ${position?.latitude},${position?.longitude}...");

      await AttendanceService().checkIn(
        photo: photoUrl,
        latitude: position!.latitude,
        longitude: position.longitude,
      );
      await loadData();
      hideLoading();
      ss("Check in success");
    } on Exception catch (err) {
      printr(err.toString());
      hideLoading();
      se("Check in failed, unrecognized or already check in today");
    }
  }

  checkOut() async {
    try {
      showLoading();

      print("Check In?");
      String? photoUrl = await takePhoto();
      if (photoUrl == null) {
        hideLoading();
        return;
      }
      print("Get location...");
      var position = await LocationService().getLocation();
      print("Get location ${position?.latitude},${position?.longitude}...");

      await AttendanceService().checkOut(
        photo: photoUrl,
        latitude: position!.latitude,
        longitude: position.longitude,
      );

      await loadData();
      hideLoading();
      ss("Check out success");
    } on Exception catch (err) {
      hideLoading();
      se("Check out failed, unrecognized or already check out today");
    }
  }

  reset() async {
    showLoading();
    await AttendanceService().reset();
    await loadData();
    hideLoading();
  }
}
