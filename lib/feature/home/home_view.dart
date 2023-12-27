import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// This is the home view of the app
@RoutePage()
class HomeView extends StatelessWidget {
  /// This widget is constructor for the home view
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert_outlined,
            size: context.sized.mediumValue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: context.padding.horizontalLow,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ColoredBox(
              color: Colors.red,
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
