import 'package:auto_route/auto_route.dart';
import 'package:save_disaster/feature/home/home_view.dart';
import 'package:save_disaster/feature/splash/view/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')

///Routes of the app
final class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
      ];
}
