import 'package:flutter/material.dart';
import 'package:flutter_marathon_app/src/config/marathonroutes.dart';
import 'package:flutter_marathon_app/src/ui/screens/home.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    MarathonRoute.firstScreen.route: (context) => HomeScreen(),
    MarathonRoute.secondScreen.route: (context) => HomeScreen(),
  };
}
