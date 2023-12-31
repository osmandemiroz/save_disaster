import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/product/gen/index.dart';

///AppVersionCard of home page
class AppVersionCard extends StatelessWidget {
  ///AppVersionCard constructor
  const AppVersionCard({
    required this.appName,
    required this.appVersion,
    super.key,
  });

  ///App name of the app
  final String appName;

  ///App version of the app
  final String appVersion;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      minLeadingWidth: 0,
      visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      title: Text(
        appName,
        style: TextStyle(
          color: ColorName.textColorPrimary,
          fontWeight: FontWeight.bold,
          fontSize: context.sized.height * 0.02,
        ),
      ),
      subtitle: Text(
        appVersion,
        style: TextStyle(
          color: ColorName.textColorSecondary,
          fontSize: context.sized.height * 0.015,
        ),
      ),
    );
  }
}
