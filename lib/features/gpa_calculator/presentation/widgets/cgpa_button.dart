import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';

class CGPAButton extends StatelessWidget {
  const CGPAButton({
    Key? key,
    required this.semesters,
  }) : super(key: key);

  final List<Semester> semesters;

  @override
  Widget build(BuildContext context) {
    final totalGPA = semesters
        .map((semester) => semester.gpa)
        .reduce((value, element) => (value + element));
    final cgpa = (totalGPA / semesters.length).toStringAsFixed(3);
    return Container(
        padding: EdgeInsets.symmetric(vertical: context.height * 0.05),
        margin: EdgeInsets.only(
          top: context.height * 0.03,
          bottom: context.height * 0.01,
          left: context.width * 0.01,
          right: context.width * 0.01,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cgpaButtonColor,
          borderRadius: BorderRadius.circular(
            context.width * 0.05,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CGPA: ",
              style: TextStyle(
                color: Colors.white,
                fontSize: context.width * 0.05,
              ),
            ),
            Text(
              cgpa.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: context.width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
