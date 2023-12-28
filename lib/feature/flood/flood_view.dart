import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///Flood view of the app
@RoutePage()
class FloodView extends StatelessWidget {
  ///Flood view constructor
  const FloodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Flood'),
      ),
    );
  }
}
