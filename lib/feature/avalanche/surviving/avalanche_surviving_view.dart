import 'package:flutter/material.dart';

///avalanche surviving view
class AvalancheSurvivingView extends StatefulWidget {
  ///avalanche surviving view constructor
  const AvalancheSurvivingView({super.key});

  @override
  State<AvalancheSurvivingView> createState() => _AvalancheSurvivingViewState();
}

class _AvalancheSurvivingViewState extends State<AvalancheSurvivingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Surviving'),
      ),
    );
  }
}
