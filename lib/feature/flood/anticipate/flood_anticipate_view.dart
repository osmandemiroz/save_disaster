import 'package:flutter/material.dart';

///FloodAnticipate view
class FloodAnticipateView extends StatefulWidget {
  ///FloodAnticipate view constructor
  const FloodAnticipateView({super.key});

  @override
  State<FloodAnticipateView> createState() => _FloodAnticipateViewState();
}

class _FloodAnticipateViewState extends State<FloodAnticipateView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Anticipate'),
      ),
    );
  }
}
