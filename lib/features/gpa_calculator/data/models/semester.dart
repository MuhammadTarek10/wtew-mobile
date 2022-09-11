import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';

class SemesterModel extends Semester {
  const SemesterModel({
    required super.id,
    required super.term,
    required super.subjects,
    required super.gpa,
  });

  factory SemesterModel.fromJson(Map<String, dynamic> json) {
    return SemesterModel(
      id: json['id'],
      term: json['order'],
      subjects: json['subjects'],
      gpa: json['gpa'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order': term,
      'subjects': subjects,
      'gpa': gpa,
    };
  }
}
