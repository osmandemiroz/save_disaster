import 'package:flutter/material.dart';

///FloodLeave view
final class FloodLeaveView extends StatefulWidget {
  ///FloodLeave view constructor
  const FloodLeaveView({super.key});

  @override
  State<FloodLeaveView> createState() => _FloodLeaveViewState();
}

final class _FloodLeaveViewState extends State<FloodLeaveView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Leave'),
      ),
    );
  }
}
