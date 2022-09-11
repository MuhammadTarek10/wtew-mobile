import 'package:equatable/equatable.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/subject.dart';

class Semester extends Equatable {
  final int term;
  final List<Subject> subjects;
  final double gpa;

  const Semester({
    required this.term,
    required this.subjects,
    required this.gpa,
  });

  @override
  List<Object?> get props => [
        term,
        subjects,
        gpa,
      ];
}
