import 'package:dio/dio.dart';

class RequestModel {
  final String path;
  final Map<String, dynamic>? queryParams;
  final FormData? formData;
  final Map<String, String>? headers;

  RequestModel({
    required this.path,
    required this.queryParams,
    required this.formData,
    required this.headers,
  });
}
