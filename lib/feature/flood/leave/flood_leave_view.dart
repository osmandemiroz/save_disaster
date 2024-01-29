import 'package:flutter/material.dart';

///FloodLeave view
class FloodLeaveView extends StatefulWidget {
  ///FloodLeave view constructor
  const FloodLeaveView({super.key});

  @override
  State<FloodLeaveView> createState() => _FloodLeaveViewState();
}

class _FloodLeaveViewState extends State<FloodLeaveView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Leave'),
      ),
    );
  }
}
