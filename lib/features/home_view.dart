import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/talks/domain/entities/sections.dart';
import 'package:wtew22/features/talks/presentation/widgets/section_card.dart';
import 'package:wtew22/features/talks/presentation/widgets/sections/section_list_view.dart';
import 'package:wtew22/features/widgets/drawer_header.dart';
import 'package:wtew22/features/widgets/drawer_item.dart';

// ignore: must_be_immutable
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<BaseSection> sections = [
    AppConstants.subjects,
    AppConstants.comparisons,
    AppConstants.softSkills,
    AppConstants.gpa,
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
            title: AppStrings.gpaCalculator,
            icon: AppAssets.gpaIcon,
            onTap: () =>
                Navigator.pushNamed(context, AppRoutes.gpaCalculatorRoute),
          ),
          // DrawerItem(
          //   title: AppStrings.map,
          //   icon: AppAssets.map,
          //   onTap: () {},
          // ),
          // DrawerItem(
          //   title: AppStrings.partners,
          //   icon: AppAssets.partners,
          //   onTap: () {},
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
