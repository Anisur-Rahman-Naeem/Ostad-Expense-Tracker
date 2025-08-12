import 'package:dartz/dartz.dart';
import 'package:ostad_expense_tracker_project/features/common/domain/entity/api_error.dart';
import 'package:ostad_expense_tracker_project/features/profile/domain/entity/profile.dart';

abstract class ProfileRepository {
  Future<Either<ApiError, Profile>> fetchProfileDetails();
}