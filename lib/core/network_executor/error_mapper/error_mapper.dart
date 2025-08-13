import 'package:ostad_expense_tracker_project/core/network_executor/models/network_response.dart';

abstract class ErrorMapper {
  NetworkResponse mapError(Exception e);
}