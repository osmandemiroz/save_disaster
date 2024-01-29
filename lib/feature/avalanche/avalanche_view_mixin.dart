import 'package:flutter/material.dart';
import 'package:save_disaster/feature/avalanche/avalache_view.dart';
import 'package:save_disaster/feature/avalanche/reaction/avalanche_reaction_view.dart';
import 'package:save_disaster/feature/avalanche/surviving/avalanche_surviving_view.dart';

///avalanche view mixin
mixin AvalancheViewMixin on State<AvalancheView> {
  ///current page index
  int currentPageIndex = 0;

  ///List of pages
  List<Widget> pages = [
    const AvalancheReactionView(),
    const AvalancheSurvivingView(),
  ];

  ///bottom navigation bar items
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      label: 'Reaction',
      icon: Icon(Icons.safety_check_sharp),
    ),
    const BottomNavigationBarItem(
      label: 'Surviving',
      icon: Icon(Icons.heart_broken_sharp),
    ),
  ];
}
