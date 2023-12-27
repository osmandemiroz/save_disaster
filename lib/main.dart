import 'package:flutter/material.dart';
import 'package:save_disaster/product/init/theme/color_schemes.g.dart';
import 'package:save_disaster/product/navigation/app_router.dart';

void main() => runApp(const MyApp());

/// This is the main application widget
final class MyApp extends StatelessWidget {
  /// This widget is the constructor for the main application
  const MyApp({super.key});
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
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
