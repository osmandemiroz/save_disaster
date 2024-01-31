import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/firebase_options.dart';

///this class used to initialize the starting process
@immutable
final class ApplicationInitializer {
  const ApplicationInitializer._();

  ///project basic requirement initialize
  static Future<void> setUp() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
