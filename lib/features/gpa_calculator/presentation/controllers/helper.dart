import 'package:wtew/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew/features/gpa_calculator/domain/entities/subject.dart';
import 'package:wtew/features/gpa_calculator/presentation/widgets/subject_inputs.dart';

Semester buildSemester(String id, int term, List<SubjectInputData> data) {
  final subjects = data
      .map(
        (element) => Subject(
          semesterId: id,
          hours: int.parse(element.hoursController.text),
          grade: getGrade(element.value!),
        ),
      )
      .toList();

  final qualityPoints = subjects
      .map((subject) => getPointValue(subject.grade) * subject.hours)
      .reduce((value, element) => (value + element));
  final hours = subjects
      .map((subject) => subject.hours)
      .reduce((value, element) => (value + element));

  final gpa = qualityPoints / hours;

  final semester = Semester(
    id: id,
    term: term,
    subjects: subjects,
    gpa: gpa,
    credits: hours,
  );
  return semester;
}

Grades getGrade(String grade) {
  switch (grade) {
    case "A+":
      return Grades.aPlus;
    case "A":
      return Grades.a;
    case "A-":
      return Grades.aMinus;
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

double getPointValue(Grades grade) {
  switch (grade) {
    case Grades.aPlus:
    case Grades.a:
      return 4;
    case Grades.aMinus:
      return 3.7;
    case Grades.bPlus:
      return 3.3;
    case Grades.b:
      return 3;
    case Grades.bMinus:
      return 2.7;
    case Grades.cPlus:
      return 2.3;
    case Grades.c:
      return 2;
    case Grades.cMinus:
      return 1.7;
    case Grades.dPlus:
      return 1.3;
    case Grades.d:
      return 1;
    case Grades.f:
      return 0;
  }
}

String getCGPA(List<Semester> semesters) {
  final totalGPA = semesters
      .map((semester) => semester.gpa)
      .reduce((value, element) => (value + element));
  return (totalGPA / semesters.length).toStringAsFixed(2);
}
