import 'package:auto_route/auto_route.dart';
import 'package:wizh_trips/config/routers/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: TripsRoute.page, initial: true),
    CustomRoute(
      page: TripsDetailRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
  ];
}
