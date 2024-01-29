import 'package:flutter/material.dart';

///FloodPrepare view
class FloodPrepareView extends StatefulWidget {
  ///FloodPrepare view constructor
  const FloodPrepareView({super.key});

  @override
  State<FloodPrepareView> createState() => _FloodPrepareViewState();
}

class _FloodPrepareViewState extends State<FloodPrepareView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Prepare'),
      ),
    );
  }
}
