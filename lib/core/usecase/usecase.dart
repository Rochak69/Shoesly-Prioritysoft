import 'package:dartz/dartz.dart';
import 'package:project_init/core/firebase_provider/api_error.dart';

abstract class UseCase<Type, Param> {
  Future<Either<AppError, Type>> call(Param param);
}

abstract class SynchronousUseCase<Type, Param> {
  Either<AppError, Type> call(Param param);
}

class NoParam {}
