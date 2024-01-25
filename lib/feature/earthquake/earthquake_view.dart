import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:save_disaster/feature/earthquake/earthquakeviewmixin.dart';

///earthquake view of the app
@RoutePage()
class EarthquakeView extends StatefulWidget {
  ///earthquake view constructor

  const EarthquakeView({super.key});

  @override
  State<EarthquakeView> createState() => _EarthquakeViewState();
}

class _EarthquakeViewState extends State<EarthquakeView>
    with EarthquakeViewMixin {
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
