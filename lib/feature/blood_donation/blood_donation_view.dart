import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/blood_donation/blood_donation_view_mixin.dart';

///MeetingPoint view
@RoutePage()
class BloodDonationView extends StatefulWidget {
  ///MeetingPoint view constructor
  const BloodDonationView({super.key});

  @override
  State<BloodDonationView> createState() => _BloodDonationViewState();
}

class _BloodDonationViewState extends State<BloodDonationView>
    with BloodDonationViewMixin {
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
