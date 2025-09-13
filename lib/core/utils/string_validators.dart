extension StringValidators on String {
  bool get isValidEmail {
    final String value = trim();
    if (value.isEmpty) return false;
    final RegExp emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(value);
  }

  bool get isValidPassword {
    final String value = trim();
    return value.isNotEmpty && value.length >= 6;
  }
}


