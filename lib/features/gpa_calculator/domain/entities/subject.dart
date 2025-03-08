import 'package:equatable/equatable.dart';

enum Grades {
  aPlus,
  a,
  aMinus,
  bPlus,
  b,
  bMinus,
  cPlus,
  c,
  cMinus,
  dPlus,
  d,
  f
}

class Subject extends Equatable {
  final String semesterId;
  final int hours;
  final Grades grade;

  const Subject({
    required this.semesterId,
    required this.hours,
    required this.grade,
  });

  @override
  List<Object?> get props => [
        semesterId,
        hours,
        grade,
      ];
}
