// ignore_for_file: avoid_positional_boolean_parameters

import 'package:auto_route/auto_route.dart';
import 'package:save_disaster/feature/home/home_view.dart';
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
      ];
}
