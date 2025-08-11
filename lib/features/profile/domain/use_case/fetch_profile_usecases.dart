import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/no_params.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/repository/use_cases.dart';
import 'package:ostad_expense_tracker_project/features/profile/domain/entity/profile.dart';
import 'package:ostad_expense_tracker_project/features/profile/domain/repository/profile_repository.dart';

class FetchProfileUseCase implements UseCase<Either<ApiError,List<Profile>>, NoParams>{
  final ProfileRepository profileRepository;

  FetchProfileUseCase({required this.profileRepository});
  @override
  Future<Either<ApiError, List<Profile>>> call(NoParams params) async{
    return await profileRepository.fetchProfileDetails();
  }

}