import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:ostad_expense_tracker_project/core/network_executor/error_mapper/error_mapper.dart';
import 'package:ostad_expense_tracker_project/core/network_executor/models/network_response.dart';

class DefaultErrorMapper implements ErrorMapper {
  final VoidCallback onAuthorize;

  DefaultErrorMapper({required this.onAuthorize});

  @override
  NetworkResponse mapError(Exception e) {
    if (e is DioException) {
      if (e.response?.statusCode == 401) {
        onAuthorize;
        return NetworkResponse(statusCode: 401, data: e.response?.data);
      } else {
        return NetworkResponse(statusCode: e.response?.statusCode ?? -1, data: e.response?.data);
      }
    } else {
      return NetworkResponse(statusCode: -1, data: 'Something went wrong');
    }
  }


}