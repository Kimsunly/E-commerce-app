import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
Future<void> main() async {
  // Todo: Add widgets binding
  // Todo: Init Local storage
  // Todo: Await Native Splash Screen
  // Todo: Init Firebase
  /*await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
      (FirebaseApp value) => Get.put(AuthenticationRepository()));*/

  // Todo: Init Authentication

  // Load all the Material Design / Themes / Localizations / Bindings
  runApp(const App());
}