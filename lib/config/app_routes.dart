import 'package:flutter/material.dart';
import 'package:wtew22/app/splash_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/home_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/timeline_view.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String timelineRoute = "/timeline";
}

class AppRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case AppRoutes.timelineRoute:
        return MaterialPageRoute(builder: (_) => TimelineView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
