// ignore_for_file: avoid_positional_boolean_parameters

import 'package:auto_route/auto_route.dart';
import 'package:save_disaster/feature/avalanche/avalache_view.dart';
import 'package:save_disaster/feature/blood_donation/blood_donation_view.dart';
import 'package:save_disaster/feature/earthquake/earthquake_view.dart';
import 'package:save_disaster/feature/fire/fire_view.dart';
import 'package:save_disaster/feature/flood/flood_view.dart';
import 'package:save_disaster/feature/home/view/home_view.dart';
import 'package:save_disaster/feature/home/view/side_menu_view.dart';
import 'package:save_disaster/feature/meeting_point/meeting_point_view.dart';
import 'package:save_disaster/feature/sos/sos_view.dart';
import 'package:save_disaster/feature/splash/view/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

///Routes of the app
final class AppRouter extends _$AppRouter {
  ///constructor of the routes

  AppRouter({required this.showSplash});

  ///splash view checker for the first run of the app
  late final bool showSplash;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: showSplash,
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: !showSplash,
        ),
        AutoRoute(
          page: SideBarRoute.page,
        ),
        AutoRoute(
          page: EarthquakeRoute.page,
        ),
        AutoRoute(
          page: FloodRoute.page,
        ),
        AutoRoute(
          page: AvalancheRoute.page,
        ),
        AutoRoute(
          page: FireRoute.page,
        ),
        AutoRoute(
          page: SosRoute.page,
        ),
        AutoRoute(
          page: MeetingPointRoute.page,
        ),
        AutoRoute(
          page: BloodDonationRoute.page,
        ),
      ];
}
