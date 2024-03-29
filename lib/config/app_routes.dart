import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtew/app/splash_view.dart';
import 'package:wtew/core/injector.dart';
import 'package:wtew/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';
import 'package:wtew/features/gpa_calculator/presentation/controllers/gpa_calculator_controller.dart';
import 'package:wtew/features/gpa_calculator/presentation/views/semesters_view.dart';
import 'package:wtew/features/gpa_calculator/presentation/views/subject_view.dart';
import 'package:wtew/features/partners/presentation/views/partners_view.dart';
import 'package:wtew/features/talks/domain/entities/note.dart';
import 'package:wtew/features/talks/domain/entities/sections.dart';
import 'package:wtew/features/home_view.dart';
import 'package:wtew/features/talks/presentation/views/timeline/pages/note/note_details_view.dart';
import 'package:wtew/features/talks/presentation/views/timeline/pages/note/note_view.dart';
import 'package:wtew/features/talks/presentation/views/timeline/section_view.dart';
import 'package:wtew/features/talks/presentation/views/timeline/widgets/timeline_note_view.dart';

class AppRoutes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String sectionRoute = "/timeline";
  static const String timelineNoteRoute = "/timeline/note";
  static const String noteRoute = "/note";
  static const String noteDetailRoute = "/note_detail";
  static const String gpaCalculatorRoute = "/gpa-calculator";
  static const String subjectRoute = "/gpa-subjects";
  static const String partnersRoute = "/partners";
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
      case AppRoutes.partnersRoute:
        return MaterialPageRoute(builder: (_) => const PartnersView());
      case AppRoutes.gpaCalculatorRoute:
        initGPA();
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                instance<GPACalculatorBloc>()..add(GetSemestersEvent()),
            child: const SemestersView(),
          ),
        );
      case AppRoutes.subjectRoute:
        return MaterialPageRoute(
          builder: (_) => SubjectsView(
            controller: instance<GPACalculatorController>(),
          ),
        );
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
