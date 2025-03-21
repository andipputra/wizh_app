import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wizh_trips/config/routers/app_routes.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRoute = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id_ID');

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'wizh Trips',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        appBarTheme: AppBarTheme(),
      ),
      routerDelegate: AutoRouterDelegate(_appRoute),
      routeInformationParser: _appRoute.defaultRouteParser(),
    );
  }
}
