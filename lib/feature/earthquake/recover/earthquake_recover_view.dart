import 'package:flutter/material.dart';

///EarthquakeRecover View
class EarthquakeRecoverView extends StatefulWidget {
  ///Earthquake view constructor
  const EarthquakeRecoverView({super.key});

  @override
  State<EarthquakeRecoverView> createState() => _EarthquakeRecoverViewState();
}

class _EarthquakeRecoverViewState extends State<EarthquakeRecoverView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Recover'),
      ),
    );
  }
}
