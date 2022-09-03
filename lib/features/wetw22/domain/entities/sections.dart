import 'package:equatable/equatable.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

abstract class BaseSection extends Equatable {
  final String title;
  final List<Activity> activities;
  final String imagePath;
  final List<Note> sectionNotes;

  const BaseSection({
    required this.title,
    required this.activities,
    required this.imagePath,
    required this.sectionNotes,
  });
}

class Subjects extends BaseSection {
  final List<Activity> courses;
  final String image;
  final List<Note> notes;

  const Subjects({
    required this.courses,
    required this.image,
    required this.notes,
  }) : super(
          title: "Subjects",
          activities: courses,
          imagePath: image,
          sectionNotes: notes,
        );

  @override
  List<Object> get props => [
        courses,
        image,
        notes,
      ];
}

class Comparisons extends BaseSection {
  final List<Activity> comparisons;
  final String image;
  final List<Note> notes;

  const Comparisons({
    required this.comparisons,
    required this.image,
    required this.notes,
  }) : super(
          title: "Comparisons",
          activities: comparisons,
          imagePath: image,
          sectionNotes: notes,
        );

  @override
  List<Object> get props => [
        comparisons,
        image,
        notes,
      ];
}

class SoftSkills extends BaseSection {
  final List<Activity> softSkills;
  final String image;
  final List<Note> notes;

  const SoftSkills({
    required this.softSkills,
    required this.image,
    required this.notes,
  }) : super(
          title: "Soft Skilss",
          activities: softSkills,
          imagePath: image,
          sectionNotes: notes,
        );

  @override
  List<Object?> get props => [
        softSkills,
        image,
        notes,
      ];
}

class GPA extends BaseSection {
  final Activity gpa;
  final String image;
  final List<Note> notes;

  GPA({
    required this.gpa,
    required this.image,
    required this.notes,
  }) : super(
          title: "GPA",
          activities: [gpa],
          imagePath: image,
          sectionNotes: notes,
        );

  @override
  List<Object> get props => [
        gpa,
        image,
        notes,
      ];
}
