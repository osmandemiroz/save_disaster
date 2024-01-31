import 'package:flutter/material.dart';
import 'package:save_disaster/feature/blood_donation/blood_donation_view.dart';
import 'package:url_launcher/url_launcher.dart';

///MeetingPoint view mixin
mixin BloodDonationViewMixin on State<BloodDonationView> {
  ///button name of the meeting point view
  final String buttonName = 'Find the nearest blood donation';

  ///site url
  final url = Uri.parse(
    'https://www.kanver.org/KanHizmetleri/KanBagisiNoktalari',
  );

  ///launch site action
  Future<void> launchSite() async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
