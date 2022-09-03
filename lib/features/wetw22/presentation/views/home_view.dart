import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/sections.dart';
import 'package:wtew22/features/wetw22/presentation/widgets/section_card.dart';
import 'package:wtew22/features/wetw22/presentation/widgets/smu_card.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List<BaseSection> sections = [
    AppConstants.subjects,
    AppConstants.comparisons,
    AppConstants.softSkills,
    AppConstants.gpa,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accentColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.welcomeMessage,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          AppConstants.buildHelpButton(context),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Section(section: sections[0]),
              Section(section: sections[1]),
            ],
          ),
          Row(
            children: [
              Section(section: sections[2]),
              Section(section: sections[3]),
            ],
          ),
          const SMU(smu: AppConstants.smu),
        ],
      ),
    );
  }
}
