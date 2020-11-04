import 'package:birdcatalogue/routes/routes.dart';
import 'package:birdcatalogue/ui/homepage.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Use this incase we're passing down args
    // final dynamic args = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute<HomePage>(
          builder: (_) => HomePage(),
        );
      default:
        return _home();
    }
  }

  static Route<dynamic> _home() {
    return MaterialPageRoute<HomePage>(
      builder: (_) => HomePage(),
    );
  }
}
