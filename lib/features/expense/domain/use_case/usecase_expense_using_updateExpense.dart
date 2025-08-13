import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/default_output.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/no_params.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/repository/use_cases.dart';
import 'package:ostad_expense_tracker_project/features/expense/domain/repository/update_expense_repository.dart';

class UseCaseExpenseUsingUpdateExpense implements UseCase<Either<ApiError, Output>, NoParams>{
  final UpdateExpenseRepository updateExpenseRepository;

  UseCaseExpenseUsingUpdateExpense({required this.updateExpenseRepository});
  @override
  Future<Either<ApiError, Output>> call(NoParams params) async {
    return await updateExpenseRepository.updatingExpenseRepository();
  }

}