import 'package:equatable/equatable.dart';
import 'package:wtew/features/gpa_calculator/domain/entities/subject.dart';

class Semester extends Equatable {
  final String id;
  final int term;
  final List<Subject>? subjects;
  final double gpa;
  final int credits;

  const Semester({
    required this.id,
    required this.term,
    this.subjects,
    required this.gpa,
    required this.credits,
  });

  @override
  List<Object?> get props => [
        id,
        term,
        subjects,
        gpa,
        credits,
      ];
}
