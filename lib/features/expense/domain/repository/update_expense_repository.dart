import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/default_output.dart';

abstract class UpdateExpenseRepository {
  Future<Either<ApiError, Output>> updatingExpenseRepository();
}