import 'package:equatable/equatable.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

enum ActivityType { session, workshop }

class Activity extends Equatable {
  final String id;
  final int order;
  final String instructor;
  final String place;
  final ActivityType activityType;
  final Note note;
  final String title;
  final String description;
  final String date;
  final String startTime;
  final String endTime;
  final String password;

  const Activity({
    required this.id,
    required this.order,
    required this.instructor,
    required this.place,
    required this.activityType,
    required this.note,
    required this.title,
    required this.description,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.password,
  });

  @override
  List<Object> get props => [
        id,
        order,
        instructor,
        place,
        activityType,
        note,
        title,
        description,
        startTime,
        endTime,
        password,
      ];
}
