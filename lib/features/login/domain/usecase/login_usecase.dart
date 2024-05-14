import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';
import 'package:project_init/core/usecase/usecase.dart';
import 'package:project_init/features/login/data/model/login_response.dart';
import 'package:project_init/features/login/domain/repository/login_repository.dart';

class LoginParam {
  LoginParam(this.email, this.password);
  final String email;
  final String password;
}

@injectable
class LoginUsecase extends UseCase<ApiResponse<LoginResponse>, LoginParam> {
  LoginUsecase(this._loginRepository);
  final LoginRepository _loginRepository;

  @override
  Future<Either<AppError, ApiResponse<LoginResponse>>> call(LoginParam param) =>
      _loginRepository.login(email: param.email, password: param.password);
}
