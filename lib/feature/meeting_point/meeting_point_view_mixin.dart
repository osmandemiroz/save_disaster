import 'package:flutter/material.dart';
import 'package:save_disaster/feature/meeting_point/meeting_point_view.dart';
import 'package:url_launcher/url_launcher.dart';

///MeetingPoint view mixin
mixin MeetingPointViewMixin on State<MeetingPointView> {
  ///button name of the meeting point view
  final String buttonName = 'Find the nearest meeting point';

  ///site url
  final url = Uri.parse(
    'https://www.turkiye.gov.tr/afet-ve-acil-durum-yonetimi-acil-toplanma-alani-sorgulama',
  );

  ///launch site action
  Future<void> launchSite() async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
