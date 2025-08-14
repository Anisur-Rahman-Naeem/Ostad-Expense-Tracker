import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/app/configurations.dart';
import 'package:ostad_expense_tracker_project/core/network_executor/models/network_response.dart';
import 'package:ostad_expense_tracker_project/core/network_executor/models/request_model.dart';
import 'package:ostad_expense_tracker_project/core/network_executor/network_executor.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/expense/data/data_source/expense_data_source.dart';
import 'package:ostad_expense_tracker_project/features/expense/data/model/expense_model.dart';

class ExpenseRemoteDataSourceImp implements ExpenseDataSource {
  final NetworkExecutor networkExecutor;

  ExpenseRemoteDataSourceImp(this.networkExecutor);
  final String _userUrl = "${Configurations.baseUrl}/expenses";
  @override
  Future<Either<ApiError, List<ExpenseModel>>> getExpenseList() async {
    final NetworkResponse response = await networkExecutor.getRequest(
      RequestModel(path: _userUrl,),
    );
    if (response.statusCode == 200) {
      List<ExpenseModel> list = [];
      for (Map<String, dynamic> jsonData in response.data){
        list.add(ExpenseModel.fromJson(jsonData));
      }
      return Right(list);
    } else {
      return Left(
        ApiError(errorMessage: response.data['message'] ?? 'Something went wrong',
        )
      );
    }
  }

}