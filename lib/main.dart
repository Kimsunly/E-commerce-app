import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  // Todo: Add widgets binding
  // Todo: Init Local storage
  // Todo: Await Native Splash Screen
  // Todo: Init Firebase
  // Todo: Init Authentication
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
