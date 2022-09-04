
import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
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
      body: ListView.separated(
        itemCount: sections.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final section = sections[index];
          return HomeSections2(
            section: section,
          );
        },
      ),
    );
  }
}

class HomeSections2 extends StatelessWidget {
  const HomeSections2({Key? key, required this.section}) : super(key: key);

  final BaseSection section;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.sectionRoute,
        arguments: section,
      ),
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                height: context.height * 0.3,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ],
                  image: DecorationImage(
                    image: AssetImage(section.imagePath),
                    // colorFilter: ColorFilter.mode(
                    //   Colors.black.withOpacity(0.4),
                    //   BlendMode.srcATop,
                    // ),
                  ),
                ),
              ),
              Container(
                height: context.height * 0.3,
                alignment: Alignment.bottomLeft,
                child: Text(
                  section.title,
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontSize: context.height * 0.04,
                        color: Colors.black.withOpacity(0.5),
                      ),
                ),
              ),
            ],
          ),
        ],
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
        const SMU(smu: AppConstants.smu),
      ],
    );
  }
}
