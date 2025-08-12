import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/no_params.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/repository/use_cases.dart';
import 'package:ostad_expense_tracker_project/features/expense/domain/entity/expense_info.dart';
import 'package:ostad_expense_tracker_project/features/expense/domain/repository/expense_repository.dart';

class FetchHomeUseCaseUsingExpense implements UseCase<Either<ApiError, List<Expense>>, NoParams> {
  final ExpenseRepository expenseRepository;

  FetchHomeUseCaseUsingExpense({required this.expenseRepository});
  @override
  Future<Either<ApiError, List<Expense>>> call(NoParams params) {
    return expenseRepository.fetchexpenseList();
  }
}