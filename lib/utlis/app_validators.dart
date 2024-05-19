import 'package:project_init/extensions/string_extension.dart';

class AppValidators {
  static String? required(String? value) {
    if (value.isNullOrEmpty()) {
      return 'This Field is required';
    }
    return null;
  }

  static String? greaterThanZero(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }

    final number = num.tryParse(value);

    if (number == null || number <= 0) {
      return 'The value must be greater than zero';
    }

    return null;
  }
}
