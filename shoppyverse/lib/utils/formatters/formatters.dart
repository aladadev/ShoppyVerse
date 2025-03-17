import 'package:intl/intl.dart';

class CustomFormatters {
  static String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return phoneNumber.replaceFirstMapped(
        RegExp(r'(\d{3})(\d{3})(\d{4})'),
        (match) => '(${match[1]}) ${match[2]}-${match[3]}',
      );
    } else if (phoneNumber.length == 11) {
      return phoneNumber.replaceFirstMapped(
        RegExp(r'(\d{1})(\d{3})(\d{3})(\d{4})'),
        (match) => '${match[1]} (${match[2]}) ${match[3]}-${match[4]}',
      );
    }
    return phoneNumber;
  }
}
