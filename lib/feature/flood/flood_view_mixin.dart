import 'package:flutter/material.dart';
import 'package:save_disaster/feature/flood/anticipate/flood_anticipate_view.dart';
import 'package:save_disaster/feature/flood/flood_view.dart';
import 'package:save_disaster/feature/flood/leave/flood_leave_view.dart';
import 'package:save_disaster/feature/flood/prepare/flood_prepare_view.dart';

///Flood view mixin
mixin FloodViewMixin on State<FloodView> {
  ///current page index
  int currentPageIndex = 0;

  ///List of pages
  List<Widget> pages = [
    const FloodAnticipateView(),
    const FloodPrepareView(),
    const FloodLeaveView(),
  ];

  ///bottom navigation bar items
  List<BottomNavigationBarItem> bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      label: 'Anticipate',
      icon: Icon(Icons.lightbulb),
    ),
    const BottomNavigationBarItem(
      label: 'Prepare',
      icon: Icon(Icons.safety_check),
    ),
    const BottomNavigationBarItem(
      label: 'Leave',
      icon: Icon(Icons.exit_to_app),
    ),
  ];
}
