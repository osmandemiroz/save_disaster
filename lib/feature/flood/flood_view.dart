import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/feature/flood/flood_view_mixin.dart';

///Flood view of the app
@RoutePage()
final class FloodView extends StatefulWidget {
  ///Flood view constructor
  const FloodView({super.key});

  @override
  State<FloodView> createState() => _FloodViewState();
}

final class _FloodViewState extends State<FloodView> with FloodViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItems,
        currentIndex: currentPageIndex,
        onTap: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
      ),
      body: pages[currentPageIndex],
    );
  }
}
