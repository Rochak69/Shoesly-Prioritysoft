import 'package:injectable/injectable.dart';
import 'package:project_init/core/build_variants/app_entry_point.dart';

enum EnvironmentKey {
  baseUrl,
  env,
}

@injectable
class EnvironmentHelper {
  String? getValue(EnvironmentKey key) {
    switch (key) {
      case EnvironmentKey.baseUrl:
        return AppEntryPoint.envSettings!.baseUrl;
      case EnvironmentKey.env:
        return AppEntryPoint.envSettings?.appEnvironment.name;
    }
  }
}
