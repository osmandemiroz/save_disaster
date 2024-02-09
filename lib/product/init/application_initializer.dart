import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:save_disaster/firebase_options.dart';
import 'package:save_disaster/product/config/env.dart';

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

    Gemini.init(apiKey: Env.chatBotApiKey);

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }
}
