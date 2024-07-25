import 'package:auto_route/auto_route.dart';
import './app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  final List<AutoRoute> routes = [
    AutoRoute(page: LocationwidgetRoute.page, initial: true),
    AutoRoute(page: WeatherRoute.page),
  ];
}