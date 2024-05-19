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

    // Try to parse the value to a number
    final number = num.tryParse(value);

    // Check if the parsing was successful and if the number is greater than zero
    if (number == null || number <= 0) {
      return 'The value must be greater than zero';
    }

    return null;
  }
}
