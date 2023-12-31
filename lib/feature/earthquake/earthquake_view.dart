import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///earthquake view of the app
@RoutePage()
class EarthquakeView extends StatelessWidget {
  ///earthquake view constructor
  const EarthquakeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Earthquake'),
      ),
    );
  }
}
