import 'package:intl/intl.dart';

class TFormatter{
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy').format(date); // we can customize the date format as needed here
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount); // we can customize the currency local and symbol as needed here
  }

  static String formatPhoneNumber(String phoneNumber) {
    // US phone number (10 digits)
    if (phoneNumber.length == 10) {
      return "(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}";
    }
    // US phone number with country code (11 digits)
    else if (phoneNumber.length == 11) {
      return "+${phoneNumber.substring(0, 1)} (${phoneNumber.substring(1, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}";
    }
    // Cambodia phone number (9 digits)
    else if (phoneNumber.length == 9) {
      // Format starting with 0 (e.g., 012 345 678)
      if (phoneNumber.startsWith('0')) {
        return "${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}";
      }
      // Format starting with 1 (e.g., 016 123 456)
      else if (phoneNumber.startsWith('1')) {
        return "${phoneNumber.substring(0, 4)} ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}";
      }
    }

    // Return the original number if the format is not recognized
    //return "Invalid phone number format";
    return phoneNumber;
  }


}
