import 'package:injectable/injectable.dart';

import 'package:project_init/core/firebase_provider/api_response.dart';
import 'package:project_init/core/preferences/preferences.dart';
import 'package:project_init/features/login/data/model/login_response.dart';

@injectable
class LoginRemoteSource {
  LoginRemoteSource(this._preferences);

  final Preferences _preferences;

  Future<ApiResponse<LoginResponse>> login({
    required String email,
    required String pasword,
  }) async {
    throw UnimplementedError();
  }
}
