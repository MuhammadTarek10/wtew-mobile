import 'package:flutter/material.dart';
import 'package:wtew/config/app_routes.dart';
import 'package:wtew/config/utils/app_assets.dart';
import 'package:wtew/config/utils/app_constants.dart';
import 'package:wtew/config/utils/app_strings.dart';
import 'package:wtew/features/talks/domain/entities/sections.dart';
import 'package:wtew/features/talks/presentation/widgets/section_card.dart';
import 'package:wtew/features/talks/presentation/widgets/sections/section_list_view.dart';
import 'package:wtew/features/widgets/drawer_header.dart';
import 'package:wtew/features/widgets/drawer_item.dart';

// ignore: must_be_immutable
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<BaseSection> sections = [
    TalksData.subjects,
    TalksData.comparisons,
    TalksData.softSkills,
    TalksData.gpa,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.welcomeMessage),
        actions: [AppConstants.buildHelpButton(context)],
      ),
      body: SecionListView(sections: sections),
      drawer: buildDrawer(context),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Header(),
          const Divider(),
          DrawerItem(
            title: AppStrings.notes,
            icon: AppAssets.notes,
            onTap: () {
              if (ModalRoute.of(context)!.settings.name ==
                  AppRoutes.homeRoute) {
                Navigator.of(context).pushNamed(AppRoutes.homeRoute);
              } else {
                Navigator.pop(context);
              }
            },
          ),
          DrawerItem(
            title: AppStrings.gpaCalculator,
            icon: AppAssets.gpaIcon,
            onTap: () => Navigator.pushReplacementNamed(
                context, AppRoutes.gpaCalculatorRoute),
          ),
          DrawerItem(
            title: AppStrings.partners,
            icon: AppAssets.partners,
            onTap: () => Navigator.pushReplacementNamed(
                context, AppRoutes.partnersRoute),
          ),
          // DrawerItem(
          //   title: AppStrings.settings,
          //   icon: AppAssets.settings,
          //   onTap: () {},
          // ),
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
      ],
    );
  }
}
