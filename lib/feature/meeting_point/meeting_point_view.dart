// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/meeting_point/meeting_point_view_mixin.dart';

///MeetingPoint view
@RoutePage()
final class MeetingPointView extends StatefulWidget {
  ///MeetingPoint view constructor
  const MeetingPointView({super.key});

  @override
  State<MeetingPointView> createState() => _MeetingPointViewState();
}

final class _MeetingPointViewState extends State<MeetingPointView>
    with MeetingPointViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(
              Size(context.sized.width * 0.8, context.sized.height * 0.08),
            ),
          ),
          onPressed: launchSite,
          icon: const Icon(Icons.map_outlined),
          label: Text(
            buttonName,
          ),
        ),
      ),
    );
  }
}
