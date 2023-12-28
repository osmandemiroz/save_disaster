import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

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
      leading: const Icon(Icons.apple),
      title: Text(
        appName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: context.sized.height * 0.02,
        ),
      ),
      subtitle: Text(
        appVersion,
        style: TextStyle(
          fontSize: context.sized.height * 0.015,
        ),
      ),
    );
  }
}
