import 'package:flutter/material.dart';

///Preparation view
final class EarthquakePrepareView extends StatefulWidget {
  ///preparation view constructor
  const EarthquakePrepareView({super.key});

  @override
  State<EarthquakePrepareView> createState() => _EarthquakePrepareViewState();
}

final class _EarthquakePrepareViewState extends State<EarthquakePrepareView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Prepare'),
      ),
    );
  }
}
