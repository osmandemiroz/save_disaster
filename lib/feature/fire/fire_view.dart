import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/feature/fire/fire_view_mixin.dart';

@RoutePage()

///fire view of the app
final class FireView extends StatefulWidget {
  ///fire view constructor
  const FireView({super.key});

  @override
  State<FireView> createState() => _FireViewState();
}

final class _FireViewState extends State<FireView> with FireViewMixin {
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
      appBar: AppBar(),
      body: pages[currentPageIndex],
    );
  }
}
