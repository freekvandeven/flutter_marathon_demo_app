import 'package:flutter/material.dart';
import 'package:flutter_marathon_app/src/config/marathonroutes.dart';
import 'package:flutter_marathon_app/src/config/routes.dart';
import 'package:flutter_marathon_app/src/config/theme.dart';

class MarathonDemoApp extends StatelessWidget {
  const MarathonDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getTheme(),
      initialRoute: MarathonRoute.firstScreen.route,
      onGenerateRoute: (settings) {
        var routes = getRoutes();
        if (routes.containsKey(settings.name)) {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => routes[settings.name]!(context),
            settings: settings,
          );
        } else {
          return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const Text('Page not found'),
            settings: settings,
          );
        }
      },
    );
  }
}
