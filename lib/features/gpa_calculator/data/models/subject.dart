import 'package:wtew22/features/gpa_calculator/domain/entities/subject.dart';

class SubjectModel extends Subject {
  const SubjectModel({
    required super.hours,
    required super.grade,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    return SubjectModel(
      hours: json['hours'],
      grade: json['grade'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'hours': hours,
      'grade': grade,
    };
  }
}
