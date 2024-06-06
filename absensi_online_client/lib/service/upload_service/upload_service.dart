import 'dart:io';

import 'package:dio/dio.dart';

const String _CLOUDINARY_CLOUD_NAME = 'dotz74j1p';
const String _CLOUDINARY_API_KEY = '983354314759691';
const String _CLOUDINARY_UPLOAD_PRESET = 'yogjjkoh';

class UploadService {
  Future<String> uploadToCloudinary(String filePath) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(
        File(filePath).readAsBytesSync(),
        filename: 'upload.jpg',
      ),
      'upload_preset': _CLOUDINARY_UPLOAD_PRESET,
      'api_key': _CLOUDINARY_API_KEY,
    });

    final res = await Dio().post(
      'https://api.cloudinary.com/v1_1/$_CLOUDINARY_CLOUD_NAME/image/upload',
      data: formData,
    );

    final String url = res.data['secure_url'];
    return url;
  }
}
