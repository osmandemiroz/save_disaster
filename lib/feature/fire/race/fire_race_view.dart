import 'package:flutter/material.dart';

///FireRace view
class FireRaceView extends StatefulWidget {
  ///FireRace view constructor
  const FireRaceView({super.key});

  @override
  State<FireRaceView> createState() => _FireRaceViewState();
}

class _FireRaceViewState extends State<FireRaceView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Race'),
      ),
    );
  }
}
