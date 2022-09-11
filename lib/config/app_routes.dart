import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtew22/app/splash_view.dart';
import 'package:wtew22/core/injector.dart';
import 'package:wtew22/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';
import 'package:wtew22/features/gpa_calculator/presentation/views/semesters_view.dart';
import 'package:wtew22/features/gpa_calculator/presentation/views/subject_view.dart';
import 'package:wtew22/features/talks/domain/entities/note.dart';
import 'package:wtew22/features/talks/domain/entities/sections.dart';
import 'package:wtew22/features/talks/presentation/views/home_view.dart';
import 'package:wtew22/features/talks/presentation/views/timeline/pages/note/note_details_view.dart';
import 'package:wtew22/features/talks/presentation/views/timeline/pages/note/note_view.dart';
import 'package:wtew22/features/talks/presentation/views/timeline/section_view.dart';
import 'package:wtew22/features/talks/presentation/views/timeline/widgets/timeline_note_view.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String sectionRoute = "/timeline";
  static const String timelineNoteRoute = "/timeline/note";
  static const String noteRoute = "/note";
  static const String noteDetailRoute = "/note_detail";
  static const String gpaCalculatorRoute = "/gpa-calculator";
  static const String subjectRoute = "/gpa-subjects";
}

class AppRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRoutes.sectionRoute:
        return MaterialPageRoute(
            builder: (_) =>
                SectionView(section: settings.arguments as BaseSection));
      case AppRoutes.timelineNoteRoute:
        return MaterialPageRoute(
            builder: (_) =>
                TimelineNoteView(notes: settings.arguments as List<Note>));
      case AppRoutes.noteRoute:
        return MaterialPageRoute(
            builder: (_) => NoteView(notes: settings.arguments as List<Note>));
      case AppRoutes.noteDetailRoute:
        return MaterialPageRoute(
            builder: (_) => NoteDetailsView(note: settings.arguments as Note));
      case AppRoutes.gpaCalculatorRoute:
        initGPA();
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => instance<GPACalculatorBloc>(),
            child: const SemestersView(),
          ),
        );
      case AppRoutes.subjectRoute:
        return MaterialPageRoute(builder: (_) => const SubjectsView());
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
