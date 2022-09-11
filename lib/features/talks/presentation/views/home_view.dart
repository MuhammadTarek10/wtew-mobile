import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/talks/domain/entities/sections.dart';
import 'package:wtew22/features/talks/presentation/widgets/drawer_header.dart';
import 'package:wtew22/features/talks/presentation/widgets/drawer_item.dart';
import 'package:wtew22/features/talks/presentation/widgets/section_card.dart';

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
      body: ListView.separated(
        itemCount: sections.length,
        separatorBuilder: (context, index) =>
            Divider(height: context.height * 0.005),
        itemBuilder: (context, index) {
          final section = sections[index];
          return SectionCard(
            section: section,
          );
        },
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const Header(),
            const Divider(),
            DrawerItem(
              title: AppStrings.gpaCalculator,
              icon: AppAssets.gpaIcon,
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.gpaCalculator),
            ),
            DrawerItem(
              title: AppStrings.map,
              icon: AppAssets.map,
              onTap: () {},
            ),
            DrawerItem(
              title: AppStrings.partners,
              icon: AppAssets.partners,
              onTap: () {},
            ),
            DrawerItem(
              title: AppStrings.settings,
              icon: AppAssets.settings,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class HomeSecions extends StatelessWidget {
  const HomeSecions({
    Key? key,
    required this.sections,
  }) : super(key: key);

  final List<BaseSection> sections;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
