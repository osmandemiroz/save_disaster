import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// This is the home view of the app
@RoutePage()
class HomeView extends StatelessWidget {
  /// This widget is constructor for the home view
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ColoredBox(
          color: Colors.red,
          child: Text('Home'),
        ),
      ),
    );
  }
}
