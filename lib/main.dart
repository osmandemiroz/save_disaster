import 'package:flutter/material.dart';
import 'package:save_disaster/product/init/theme/color_schemes.g.dart';
import 'package:save_disaster/product/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await SharedPreferences.getInstance();
  final firstRun = preferences.getBool('firstRun') ?? true;
  runApp(
    MyApp(
      showSplash: firstRun,
    ),
  );
}

/// This is the main application widget
final class MyApp extends StatelessWidget {
  /// This widget is the constructor for the main application
  const MyApp({required this.showSplash, super.key});

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
        useMaterial3: true,
        colorScheme: ProductColorSchemes.lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ProductColorSchemes.darkColorScheme,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
