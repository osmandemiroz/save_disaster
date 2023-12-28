import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///avalanche view of the app
@RoutePage()
class AvalancheView extends StatelessWidget {
  ///avalanche view constructor
  const AvalancheView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Avalanche'),
      ),
    );
  }
}
