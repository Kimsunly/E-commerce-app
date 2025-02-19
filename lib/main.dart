import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'app.dart';  // Import the App widget
import 'navigation_menu.dart';  // Import the NavigationMenu widget

void main() {
  // Todo: Add widgets binding
  // Todo: Init Local storage
  // Todo: Await Native Splash Screen
  // Todo: Init Firebase
  // Todo: Init Authentication

  runApp(const MyApp());  // Run the app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationMenu(),  // Set NavigationMenu as the main screen
    );
  }
}
