import 'package:flutter/material.dart';
import '../../counter/view/counter_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) {
          return const CounterView();
        });
      case '/second':
        return MaterialPageRoute(builder: (context) {
          return const SecondScreen();
        });
      default:
        return MaterialPageRoute(builder: (context) {
          return const Text("You should probably not be passing null");
        });
    }
  }
}
