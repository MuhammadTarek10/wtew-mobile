import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';

class SemesterModel extends Semester {
  const SemesterModel({
    required super.id,
    required super.term,
    super.subjects,
    required super.gpa,
    required super.credits,
  });

  factory SemesterModel.fromJson(Map<String, dynamic> json) {
    return SemesterModel(
      id: json['id'],
      term: json['term'],
      gpa: json['gpa'],
      credits: json['credits'],
    );
  }

  static List<SemesterModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => SemesterModel.fromJson(json)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'term': term,
      'gpa': gpa,
      'credits': credits,
    };
  }
}
