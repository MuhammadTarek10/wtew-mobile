import 'package:flutter/material.dart';
import 'package:wtew/config/utils/app_media_query.dart';
import 'package:wtew/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew/features/gpa_calculator/presentation/controllers/helper.dart';

class CGPA extends StatelessWidget {
  const CGPA({
    Key? key,
    required this.semesters,
  }) : super(key: key);

  final List<Semester> semesters;

  @override
  Widget build(BuildContext context) {
    final cgpa = getCGPA(semesters);
    return Container(
        padding: EdgeInsets.symmetric(vertical: context.height * 0.05),
        margin: EdgeInsets.only(
          top: context.height * 0.03,
          bottom: context.height * 0.01,
          left: context.width * 0.03,
          right: context.width * 0.03,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(context.width * 0.05),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "CGPA: ",
              style: TextStyle(
                color: Colors.black,
                fontSize: context.width * 0.05,
              ),
            ),
            Text(
              cgpa.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: context.width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
