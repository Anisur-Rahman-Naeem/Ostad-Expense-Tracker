import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/expense/data/data_source/expense_data_source.dart';
import 'package:ostad_expense_tracker_project/features/expense/data/model/expense_model.dart';
import 'package:ostad_expense_tracker_project/features/expense/domain/entity/expense_info.dart';
import 'package:ostad_expense_tracker_project/features/expense/domain/repository/expense_repository.dart';

class ExpenseRepositoryImpl implements ExpenseRepository {
  final ExpenseDataSource expenseDataSource;

  ExpenseRepositoryImpl(this.expenseDataSource);
  @override
  Future<Either<ApiError, List<Expense>>> fetchexpenseList() async {
    final response = await expenseDataSource.getExpenseList();
    return response.fold((l) =>Left(l), (expenseModel){
      final List<Expense> expenseList = expenseModel.map((e) => e.toEntity()).toList();
      return Right(expenseList);
    });
  }

}