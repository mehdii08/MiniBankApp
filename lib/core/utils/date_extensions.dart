import 'package:intl/intl.dart';

extension DateFormatting on DateTime {
  String toFormattedString() {
    final DateFormat fmt = DateFormat('MMM d, y - HH:mm');
    return fmt.format(this);
  }
}


