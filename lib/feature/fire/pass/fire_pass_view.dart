import 'package:flutter/material.dart';

///FirePass view
final class FirePassView extends StatefulWidget {
  ///FirePass view constructor
  const FirePassView({super.key});

  @override
  State<FirePassView> createState() => _FirePassViewState();
}

final class _FirePassViewState extends State<FirePassView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Pass'),
      ),
    );
  }
}
