import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/expense/data/model/expense_model.dart';

abstract class ExpenseDataSource {
  Future<Either<ApiError,List<ExpenseModel>>> getExpenseList();
}