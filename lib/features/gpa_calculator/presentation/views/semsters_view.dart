import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/subject.dart';
import 'package:wtew22/features/gpa_calculator/presentation/widgets/cgpa_button.dart';
import 'package:wtew22/features/gpa_calculator/presentation/widgets/semester_card.dart';

class SemestersView extends StatelessWidget {
  SemestersView({Key? key}) : super(key: key);

  List<Semester> semesters = const [
    Semester(
      term: 1,
      subjects: [
        Subject(hours: 3, grade: Grades.a),
        Subject(hours: 3, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 3.81,
    ),
    Semester(
      term: 2,
      subjects: [
        Subject(hours: 3, grade: Grades.a),
        Subject(hours: 1, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 3.16,
    ),
    Semester(
      term: 3,
      subjects: [
        Subject(hours: 1, grade: Grades.a),
        Subject(hours: 1, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.26,
    ),
    Semester(
      term: 1,
      subjects: [
        Subject(hours: 3, grade: Grades.a),
        Subject(hours: 3, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.24,
    ),
    Semester(
      term: 2,
      subjects: [
        Subject(hours: 3, grade: Grades.a),
        Subject(hours: 1, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.56,
    ),
    Semester(
      term: 3,
      subjects: [
        Subject(hours: 1, grade: Grades.a),
        Subject(hours: 1, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.36,
    ),
    Semester(
      term: 1,
      subjects: [
        Subject(hours: 3, grade: Grades.a),
        Subject(hours: 3, grade: Grades.bMinus),
        Subject(hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.48,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(AppStrings.semesters),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: semesters.length,
              itemBuilder: (context, index) {
                return SemesterCard(semester: semesters[index]);
              },
            ),
            semesters.isNotEmpty
                ? CGPAButton(semesters: semesters)
                : Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade200,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }
}
