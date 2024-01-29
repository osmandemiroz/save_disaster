import 'package:flutter/material.dart';
import 'package:save_disaster/feature/fire/fire_view.dart';
import 'package:save_disaster/feature/fire/pass/fire_pass_view.dart';
import 'package:save_disaster/feature/fire/race/fire_race_view.dart';

///fire view mixin
mixin FireViewMixin on State<FireView> {
  ///current page index
  int currentPageIndex = 0;

  ///List of pages
  List<Widget> pages = [
    const FireRaceView(),
    const FirePassView(),
  ];

  ///bottom navigation bar items
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      label: 'Race',
      icon: Icon(Icons.emergency_sharp),
    ),
    const BottomNavigationBarItem(
      label: 'Pass',
      icon: Icon(Icons.fire_extinguisher),
    ),
  ];
}
