import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/feature/avalanche/avalanche_view_mixin.dart';

///avalanche view of the app
@RoutePage()
final class AvalancheView extends StatefulWidget {
  ///avalanche view constructor
  const AvalancheView({super.key});

  @override
  State<AvalancheView> createState() => _AvalancheViewState();
}

final class _AvalancheViewState extends State<AvalancheView>
    with AvalancheViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
