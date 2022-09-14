import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/presentation/controllers/gpa_calculator_controller.dart';

class SemesterCard extends StatelessWidget {
  const SemesterCard({
    Key? key,
    required this.controller,
    required this.semester,
    required this.onDismissed,
  }) : super(key: key);

  final GPACalculatorController controller;
  final Semester semester;
  final VoidCallback onDismissed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Dismissible(
        key: UniqueKey(),
        onDismissed: (direction) => onDismissed(),
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
                      "Semester: ${semester.id}",
                      style: TextStyle(
                        fontSize: context.height * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Credits: ${semester.credits}",
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
                    semester.gpa.toStringAsFixed(2),
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
      ),
    );
  }
}
