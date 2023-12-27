import 'package:flutter/material.dart';

///earthquake view of the app
class EarthquakeView extends StatelessWidget {
  ///earthquake view constructor
  const EarthquakeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Earthquake'),
      ),
    );
  }
}
