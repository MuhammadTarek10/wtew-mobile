import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';

class SemesterCard extends StatelessWidget {
  const SemesterCard({Key? key, required this.semester}) : super(key: key);

  final Semester semester;

  @override
  Widget build(BuildContext context) {
    final totalCredits = semester.subjects
        .map((subject) => subject.hours)
        .reduce((value, element) => (value + element));

    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: context.height * 0.12,
        margin: EdgeInsets.all(context.width * 0.01),
        padding: EdgeInsets.all(context.width * 0.02),
        decoration: BoxDecoration(
          color: AppColors.semesterCardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(AppAssets.semester),
            SizedBox(width: context.width * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: context.height * 0.01),
                  child: Text(
                    "Semester: ${semester.term}",
                    style: TextStyle(
                      fontSize: context.height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Credits: $totalCredits",
                  style: TextStyle(
                    fontSize: context.height * 0.018,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: context.height * 0.01),
                  child: Text(
                    "GPA",
                    style: TextStyle(
                      fontSize: context.height * 0.02,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  semester.gpa.toString(),
                  style: TextStyle(
                    fontSize: context.height * 0.018,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
