import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class Day {
  final String id;
  final String name;
  final List<Activity> activities;
  final List<Note> notes;
  final String date;

  Day({
    required this.id,
    required this.name,
    required this.activities,
    required this.notes,
    required this.date,
  });
}
