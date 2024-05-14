import 'package:project_init/core/build_variants/app_entry_point.dart';
import 'package:project_init/core/config/app_config.dart';

class DevelopmentEntryPoint extends AppEntryPoint {
  DevelopmentEntryPoint() : super(AppConfiguration.development);
}

class ProductionEntryPoint extends AppEntryPoint {
  ProductionEntryPoint() : super(AppConfiguration.production);
}

class StagingEntryPoint extends AppEntryPoint {
  StagingEntryPoint() : super(AppConfiguration.staging);
}
