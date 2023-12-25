import 'package:flutter/material.dart';
import 'package:save_disaster/feature/home/home_view.dart';

void main() => runApp(const MyApp());

/// This is the main application widget
class MyApp extends StatelessWidget {
  /// This widget is the constructor for the main application
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Renault'),
        ),
        body: const HomeView(),
      ),
    );
  }
}
