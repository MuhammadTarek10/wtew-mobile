import 'package:wtew22/features/gpa_calculator/domain/entities/subject.dart';

class SubjectModel extends Subject {
  const SubjectModel({
    required super.semesterId,
    required super.hours,
    required super.grade,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> json) {
    return SubjectModel(
      semesterId: json['semesterId'],
      hours: json['hours'],
      grade: stringToGrade(json['grade']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'semesterId': semesterId,
      'hours': hours,
      'grade': gradeToString(grade),
    };
  }

  String gradeToString(Grades grade) {
    switch (grade) {
      case Grades.aPlus:
        return "A+";
      case Grades.a:
        return "A";
      case Grades.aMinus:
        return "A-";
      case Grades.bPlus:
        return "B+";
      case Grades.b:
        return "B";
      case Grades.bMinus:
        return "B-";
      case Grades.cPlus:
        return "C+";
      case Grades.c:
        return "C";
      case Grades.cMinus:
        return "C-";
      case Grades.dPlus:
        return "D+";
      case Grades.d:
        return "D";
      case Grades.f:
        return "F";
    }
  }

  static Grades stringToGrade(String grade) {
    switch (grade) {
      case "A+":
        return Grades.aPlus;
      case "A":
        return Grades.a;
      case "A-":
        return Grades.aPlus;
      case "B+":
        return Grades.bPlus;
      case "B":
        return Grades.b;
      case "B-":
        return Grades.bMinus;
      case "C+":
        return Grades.cPlus;
      case "C":
        return Grades.c;
      case "C-":
        return Grades.cMinus;
      case "D+":
        return Grades.dPlus;
      case "D":
        return Grades.d;
      case "F":
        return Grades.f;
      default:
        return Grades.f;
    }
  }
}
