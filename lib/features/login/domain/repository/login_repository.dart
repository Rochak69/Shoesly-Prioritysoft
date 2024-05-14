import 'package:dartz/dartz.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/features/login/data/model/login_response.dart';

abstract class LoginRepository {
  Future<Either<AppError, ApiResponse<LoginResponse>>> login({
    required String email,
    required String password,
  });
}
