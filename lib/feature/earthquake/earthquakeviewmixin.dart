import 'package:flutter/material.dart';
import 'package:save_disaster/feature/earthquake/earthquake_view.dart';
import 'package:save_disaster/feature/earthquake/prepare/earthquake_prepare_view.dart';
import 'package:save_disaster/feature/earthquake/recover/earthquake_recover_view.dart';
import 'package:save_disaster/feature/earthquake/survive/earthquake_survive_view.dart';

///Earthquake View Mixin
mixin EarthquakeViewMixin on State<EarthquakeView> {
  ///current page index
  int currentPageIndex = 0;

  ///List of pages
  List<Widget> pages = [
    const EarthquakePrepareView(),
    const EarthquakeSurviveView(),
    const EarthquakeRecoverView(),
  ];

  ///bottom navigation bar items on Earthquake view
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      label: 'Prepare',
      icon: Icon(Icons.safety_check),
    ),
    const BottomNavigationBarItem(
      label: 'Survive',
      icon: Icon(Icons.heart_broken_outlined),
    ),
    const BottomNavigationBarItem(
      label: 'Recover',
      icon: Icon(Icons.handyman_sharp),
    ),
  ];
}
