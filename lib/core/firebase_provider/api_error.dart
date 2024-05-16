import 'package:project_init/constants/app_constant.dart';

abstract class AppError implements Exception {
  const AppError({this.message = AppConstants.errorMessage});
  final String message;
  AppError copyWith({String? message}) =>
      InternalAppError(message: message ?? this.message);
}

class InternalAppError extends AppError {
  const InternalAppError({super.message = AppConstants.errorMessage});
}
