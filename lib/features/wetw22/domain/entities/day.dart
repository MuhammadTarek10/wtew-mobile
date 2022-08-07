import 'package:equatable/equatable.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class Day extends Equatable {
  final String id;
  final String name;
  final List<Activity> activities;
  final List<Note> notes;
  final String date;

  const Day({
    required this.id,
    required this.name,
    required this.activities,
    required this.notes,
    required this.date,
  });

  @override
  List<Object> get props => [
        id,
        name,
        activities,
        notes,
        date,
      ];
}
