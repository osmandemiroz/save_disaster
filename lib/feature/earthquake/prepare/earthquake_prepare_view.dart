import 'package:flutter/material.dart';

///Preparation view
class EarthquakePrepareView extends StatefulWidget {
  ///preparation view constructor
  const EarthquakePrepareView({super.key});

  @override
  State<EarthquakePrepareView> createState() => _EarthquakePrepareViewState();
}

class _EarthquakePrepareViewState extends State<EarthquakePrepareView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Prepare'),
      ),
    );
  }
}
