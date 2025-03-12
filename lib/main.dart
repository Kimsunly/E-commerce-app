import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  
  // Todo: Add widgets binding
  // Todo: Init Local storage
  // Todo: Await Native Splash Screen
  // Todo: Init Firebase
  // Todo: Init Authentication


  runApp(const App());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
