// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Mini Bank';

  @override
  String get loginTitle => 'Login';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get loginButton => 'Sign in';

  @override
  String get homeTitle => 'Home';

  @override
  String get balanceLabel => 'Balance';

  @override
  String get recentTransactions => 'Recent transactions';

  @override
  String get viewAll => 'View all';

  @override
  String get transactionsTitle => 'Transactions';

  @override
  String get transferTitle => 'Transfer';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get beneficiaryLabel => 'Beneficiary name';

  @override
  String get amountLabel => 'Amount';

  @override
  String get accountNumberLabel => 'Account number';

  @override
  String get submitButton => 'Submit';

  @override
  String get formInvalid => 'Please fix the errors';

  @override
  String get emptyState => 'No data yet';

  @override
  String get retry => 'Retry';

  @override
  String get invalidEmail => 'Please enter a valid email';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters';

  @override
  String get invalidCredentials => 'Invalid credentials';

  @override
  String get logout => 'Logout';

  @override
  String get currency => 'USDT';

  @override
  String get userNotFound => 'User not found';
}
