import 'package:flutter/material.dart';

///avalanche reaction view of the app
class AvalancheReactionView extends StatefulWidget {
  ///avalanche reaction view constructor
  const AvalancheReactionView({super.key});

  @override
  State<AvalancheReactionView> createState() => _AvalancheReactionViewState();
}

class _AvalancheReactionViewState extends State<AvalancheReactionView> {
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
