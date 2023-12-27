import 'package:flutter/material.dart';
import 'package:save_disaster/feature/splash/view/splash_view.dart';
import 'package:save_disaster/product/init/theme/color_schemes.g.dart';

void main() => runApp(const MyApp());

/// This is the main application widget
class MyApp extends StatelessWidget {
  /// This widget is the constructor for the main application
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ProductColorSchemes.lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ProductColorSchemes.darkColorScheme,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
