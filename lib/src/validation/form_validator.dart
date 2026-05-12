class FormValidators {
  static String? required(
    String? value, {
    String message = 'This field is required',
  }) {
    if (value == null || value.trim().isEmpty) {
      return message;
    }

    return null;
  }

  static String? email(String? value, {String message = 'Invalid email'}) {
    if (value == null || value.isEmpty) {
      return null;
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return message;
    }

    return null;
  }

  static String? minLength(String? value, int length, {String? message}) {
    if (value == null) return null;

    if (value.length < length) {
      return message ?? 'Minimum $length characters required';
    }

    return null;
  }

  static String? maxLength(String? value, int length, {String? message}) {
    if (value == null) return null;

    if (value.length > length) {
      return message ?? 'Maximum $length characters allowed';
    }

    return null;
  }

  static String? phone(
    String? value, {
    String message = 'Invalid phone number',
  }) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }

    final trimmedValue = value.trim();
    final digitsOnly = trimmedValue.replaceAll(RegExp(r'\D'), '');
    final phoneRegex = RegExp(r'^\+?[\d\s\-\(\)]+$');

    if (digitsOnly.length < 10 || !phoneRegex.hasMatch(trimmedValue)) {
      return message;
    }

    return null;
  }
}
