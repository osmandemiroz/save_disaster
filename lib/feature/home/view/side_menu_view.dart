import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:save_disaster/feature/home/widget/app_version_card.dart';
import 'package:save_disaster/feature/home/widget/menu_bar_item.dart';
import 'package:save_disaster/product/gen/index.dart';
import 'package:save_disaster/product/navigation/app_router.dart';

///SideBarView of home page
@RoutePage()
final class SideBarView extends StatefulWidget {
  ///SideBarView constructor
  const SideBarView({super.key});

  @override
  State<SideBarView> createState() => _SideBarViewState();
}

final class _SideBarViewState extends State<SideBarView> {
  final String appVersion = '1.0.0';
  final String appName = 'SaveDisaster';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.sized.width * 0.8,
        height: double.infinity,
        color: ColorName.backgroundColorPrimary,
        child: SafeArea(
          child: Column(
            children: [
              AppVersionCard(appName: appName, appVersion: appVersion),
              const Divider(),
              MenuBarItem(
                onTap: () => context.router.push(const EarthquakeRoute()),
                icon: Assets.images.icEarthquake.image(),
                menuName: 'Earthquake',
              ),
              SizedBox(
                height: context.sized.height * 0.02,
              ),
              MenuBarItem(
                onTap: () => context.router.push(const FloodRoute()),
                icon: Assets.images.icFlood.image(),
                menuName: 'Flood',
              ),
              SizedBox(
                height: context.sized.height * 0.02,
              ),
              MenuBarItem(
                onTap: () => context.router.push(const AvalancheRoute()),
                icon: Assets.images.icAvalanche.image(),
                menuName: 'Avalanche',
              ),
              SizedBox(
                height: context.sized.height * 0.02,
              ),
              MenuBarItem(
                onTap: () => context.router.push(const FireRoute()),
                icon: Assets.images.icFire.image(),
                menuName: 'Fire',
              ),
              SizedBox(
                height: context.sized.height * 0.02,
              ),
              MenuBarItem(
                onTap: () => context.router.push(const SosRoute()),
                icon: Assets.images.icSos.image(),
                menuName: 'SOS',
              ),
              SizedBox(
                height: context.sized.height * 0.02,
              ),
              MenuBarItem(
                icon: Assets.images.icMeetingPoint.image(),
                onTap: () => context.router.push(const MeetingPointRoute()),
                menuName: 'Meeting Point',
              ),
              SizedBox(
                height: context.sized.height * 0.02,
              ),
              MenuBarItem(
                icon: Assets.images.icBloodDonation.image(),
                menuName: 'Blood Donation',
                onTap: () => context.router.push(const BloodDonationRoute()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
