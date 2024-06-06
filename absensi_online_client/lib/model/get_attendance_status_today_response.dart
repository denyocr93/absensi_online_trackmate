import 'dart:convert';

class GetAttendanceStatusTodayResponse {
  Data? data;

  GetAttendanceStatusTodayResponse({
    this.data,
  });

  GetAttendanceStatusTodayResponse copyWith({
    Data? data,
  }) =>
      GetAttendanceStatusTodayResponse(
        data: data ?? this.data,
      );

  factory GetAttendanceStatusTodayResponse.fromRawJson(String str) =>
      GetAttendanceStatusTodayResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetAttendanceStatusTodayResponse.fromJson(
          Map<String, dynamic> json) =>
      GetAttendanceStatusTodayResponse(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  int? userId;
  double? checkInLatitude;
  double? checkInLongitude;
  String? checkInPhoto;
  DateTime? checkInDate;
  double? checkOutLatitude;
  double? checkOutLongitude;
  String? checkOutPhoto;
  DateTime? checkOutDate;
  dynamic workingHour;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Data({
    this.id,
    this.userId,
    this.checkInLatitude,
    this.checkInLongitude,
    this.checkInPhoto,
    this.checkInDate,
    this.checkOutLatitude,
    this.checkOutLongitude,
    this.checkOutPhoto,
    this.checkOutDate,
    this.workingHour,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Data copyWith({
    int? id,
    int? userId,
    double? checkInLatitude,
    double? checkInLongitude,
    String? checkInPhoto,
    DateTime? checkInDate,
    double? checkOutLatitude,
    double? checkOutLongitude,
    String? checkOutPhoto,
    DateTime? checkOutDate,
    dynamic workingHour,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) =>
      Data(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        checkInLatitude: checkInLatitude ?? this.checkInLatitude,
        checkInLongitude: checkInLongitude ?? this.checkInLongitude,
        checkInPhoto: checkInPhoto ?? this.checkInPhoto,
        checkInDate: checkInDate ?? this.checkInDate,
        checkOutLatitude: checkOutLatitude ?? this.checkOutLatitude,
        checkOutLongitude: checkOutLongitude ?? this.checkOutLongitude,
        checkOutPhoto: checkOutPhoto ?? this.checkOutPhoto,
        checkOutDate: checkOutDate ?? this.checkOutDate,
        workingHour: workingHour ?? this.workingHour,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userId: json["user_id"],
        checkInLatitude: json["check_in_latitude"]?.toDouble(),
        checkInLongitude: json["check_in_longitude"]?.toDouble(),
        checkInPhoto: json["check_in_photo"],
        checkInDate: json["check_in_date"] == null
            ? null
            : DateTime.parse(json["check_in_date"]),
        checkOutLatitude: json["check_out_latitude"]?.toDouble(),
        checkOutLongitude: json["check_out_longitude"]?.toDouble(),
        checkOutPhoto: json["check_out_photo"],
        checkOutDate: json["check_out_date"] == null
            ? null
            : DateTime.parse(json["check_out_date"]),
        workingHour: json["working_hour"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "check_in_latitude": checkInLatitude,
        "check_in_longitude": checkInLongitude,
        "check_in_photo": checkInPhoto,
        "check_in_date": checkInDate?.toIso8601String(),
        "check_out_latitude": checkOutLatitude,
        "check_out_longitude": checkOutLongitude,
        "check_out_photo": checkOutPhoto,
        "check_out_date": checkOutDate?.toIso8601String(),
        "working_hour": workingHour,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
