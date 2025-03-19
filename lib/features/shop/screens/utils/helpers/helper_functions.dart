import 'package:flutter/material.dart';

class ThelperFunctions {
  // Function to get a color based on the value using 'if' and 'return'
  static Color? getColor(String value) {
    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    } else if (value == 'White') {
      return Colors.white;
    } else if (value == 'Yellow') {
      return Colors.yellow;
    } else if (value == 'Orange') {
      return Colors.deepOrange;
    } else if (value == 'Brown') {
      return Colors.brown;
    } else {
      return null; // Return null if the value doesn't match any color
    }
  }

  // Function to navigate to another screen using 'if' and 'return'
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
    }

  // Function to truncate text if it exceeds maxLength using 'if' and 'return'
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  // Function to check if the app is in dark mode using 'if' and 'return'
  static bool isDarkMode(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return true;
    } else {
      return false;
    }
  }

  // Function to get the screen size using 'if' and 'return'
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
    }

  // Function to get screen height using 'if' and 'return'
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
    }

  // Function to get screen width using 'if' and 'return'
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
    }
}
