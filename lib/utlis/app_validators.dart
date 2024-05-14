import 'package:project_init/extensions/string_extension.dart';

class AppValidators {
  static String? required(String? value) {
    if (value.isNullOrEmpty()) {
      return 'This Field is required';
    }
    return null;
  }
}
