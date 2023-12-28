import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

///fire view of the app
class FireView extends StatelessWidget {
  ///fire view constructor
  const FireView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Fire'),
      ),
    );
  }
}
