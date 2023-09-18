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
  List<BaseSection> sections22 = [
    TalksData22.subjects,
    TalksData22.comparisons,
    TalksData22.softSkills,
    TalksData22.gpa,
  ];

  List<BaseSection> sections23 = [
    TalksData22.subjects,
    TalksData22.comparisons,
    TalksData22.softSkills,
    TalksData22.gpa,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.welcomeMessage),
          actions: [AppConstants.buildHelpButton(context)],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  "WTEW23",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "WTEW22",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SectionListView(sections: sections23),
            SectionListView(sections: sections22),
          ],
        ),
        drawer: buildDrawer(context),
      ),
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
          // DrawerItem(
          //   title: AppStrings.partners,
          //   icon: AppAssets.partners,
          //   onTap: () => Navigator.pushReplacementNamed(
          //       context, AppRoutes.partnersRoute),
          // ),
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

class HomeSections extends StatelessWidget {
  const HomeSections({
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
