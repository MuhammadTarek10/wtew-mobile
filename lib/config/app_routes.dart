import 'package:flutter/material.dart';
import 'package:wtew22/app/splash_view.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';
import 'package:wtew22/features/wetw22/presentation/views/home_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/note/note_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/day_view.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String timelineRoute = "/timeline";
  static const String noteRoute = "/note";
}

class AppRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      case AppRoutes.timelineRoute:
        return MaterialPageRoute(
            builder: (_) => TimelineView(day: settings.arguments as Day));
      case AppRoutes.noteRoute:
        return MaterialPageRoute(builder: (_) => NoteView(notes: settings.arguments as List<Note>));
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
