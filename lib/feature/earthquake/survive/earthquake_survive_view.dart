import 'package:flutter/material.dart';

///EarthquakeSurvive view
final class EarthquakeSurviveView extends StatefulWidget {
  ///Earthquake survive view constructor
  const EarthquakeSurviveView({super.key});

  @override
  State<EarthquakeSurviveView> createState() => _EarthquakeSurviveViewState();
}

final class _EarthquakeSurviveViewState extends State<EarthquakeSurviveView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Survive'),
      ),
    );
  }
}
