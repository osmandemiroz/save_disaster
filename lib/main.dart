import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:save_disaster/product/init/application_initializer.dart';
import 'package:save_disaster/product/init/theme/color_schemes.g.dart';
import 'package:save_disaster/product/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  await ApplicationInitializer.setUp();
  final preferences = await SharedPreferences.getInstance();

  final firstRun = preferences.getBool('firstRun') ?? true;

  runApp(
    _MyApp(
      showSplash: firstRun,
    ),
  );
}

/// This is the main application widget
final class _MyApp extends StatelessWidget {
  /// This widget is the constructor for the main application
  const _MyApp({required this.showSplash});

  ///splash view checker for the first run of the app
  final bool showSplash;

  @override
  Widget build(BuildContext context) {
    final preferences = SharedPreferences.getInstance();

    //set first run to false
    // ignore: cascade_invocations
    preferences.then((value) {
      value.setBool('firstRun', false);
    });

    return MaterialApp.router(
      routerConfig: AppRouter(showSplash: showSplash).config(),
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          const TextTheme(),
        ),
        useMaterial3: true,
        colorScheme: ProductColorSchemes.lightColorScheme,
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(
          const TextTheme(),
        ),
        useMaterial3: true,
        colorScheme: ProductColorSchemes.darkColorScheme,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
