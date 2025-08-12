import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/auth/domain/repository/auth_signIn_repository.dart';
import 'package:ostad_expense_tracker_project/features/auth/domain/repository/auth_signUp_repository.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/default_output.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/no_params.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/repository/use_cases.dart';

class UseCasesSignInRepository implements UseCase<Either<ApiError, Output>, NoParams> {
  final AuthSignInRepository authSigninRepository;

  UseCasesSignInRepository({required this.authSigninRepository});
  @override
  Future<Either<ApiError, Output>> call(NoParams params) {
    return authSigninRepository.postUserSignInInformation();

  }

}