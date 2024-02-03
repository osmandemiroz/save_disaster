import 'package:flutter/material.dart';

///avalanche reaction view of the app
final class AvalancheReactionView extends StatelessWidget {
  ///avalanche reaction view constructor
  const AvalancheReactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Reaction'),
      ),
    );
  }
}
