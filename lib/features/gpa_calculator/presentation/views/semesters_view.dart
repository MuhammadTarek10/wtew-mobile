import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtew/config/app_routes.dart';
import 'package:wtew/config/utils/app_assets.dart';
import 'package:wtew/config/utils/app_strings.dart';
import 'package:wtew/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';
import 'package:wtew/features/gpa_calculator/presentation/controllers/gpa_calculator_controller.dart';
import 'package:wtew/features/gpa_calculator/presentation/controllers/helper.dart';
import 'package:wtew/features/gpa_calculator/presentation/widgets/semester_card.dart';
import 'package:wtew/features/widgets/drawer_header.dart';
import 'package:wtew/features/widgets/drawer_item.dart';

class SemestersView extends StatefulWidget {
  const SemestersView({Key? key}) : super(key: key);

  @override
  State<SemestersView> createState() => _SemestersViewState();
}

class _SemestersViewState extends State<SemestersView> {
  late GPACalculatorController controller;
  late StreamController<List<Semester>> semesterController;
  late StreamController<String> titleStreamController;

  @override
  void initState() {
    super.initState();
    controller =
        GPACalculatorController(bloc: context.read<GPACalculatorBloc>());
    semesterController = StreamController<List<Semester>>();
    titleStreamController = StreamController<String>();
  }

  @override
  void dispose() {
    controller.close();
    semesterController.close();
    titleStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GPACalculatorBloc, GPACalculatorState>(
      listener: (context, state) {
        if (state is SemesterDeletedSuccessState) {
          controller.getSemesters();
        } else if (state is SemestersLoadedSuccessState &&
            state.semesters.isNotEmpty) {
          titleStreamController
              .add("${AppStrings.cgpa}: ${getCGPA(state.semesters)}");
          semesterController.add(state.semesters);
        } else if (state is SemestersLoadedSuccessState &&
            state.semesters.isEmpty) {
          titleStreamController.add(AppStrings.semesters);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: StreamBuilder<String>(
            stream: titleStreamController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              } else {
                return const Text(AppStrings.semesters);
              }
            },
          ),
          actions: [
            IconButton(
              onPressed: () async {
                await Navigator.pushNamed(context, AppRoutes.subjectRoute);
                controller.getSemesters();
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        drawer: buildDrawer(context),
        body: StreamBuilder<List<Semester>>(
          stream: semesterController.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final semester = snapshot.data!.elementAt(index);
                  return SemesterCard(
                    controller: controller,
                    semester: semester,
                    onDismissed: () {
                      snapshot.data!.remove(semester);
                      controller.deleteSemester(semester);
                    },
                  );
                },
              );
            } else {
              return Container();
            }
          },
        ),
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
            onTap: () =>
                Navigator.pushReplacementNamed(context, AppRoutes.homeRoute),
          ),
          DrawerItem(
              title: AppStrings.gpaCalculator,
              icon: AppAssets.gpaIcon,
              onTap: () {
                if (ModalRoute.of(context)!.settings.name ==
                    AppRoutes.gpaCalculatorRoute) {
                  Navigator.pushReplacementNamed(
                      context, AppRoutes.gpaCalculatorRoute);
                } else {
                  Navigator.pop(context);
                }
              }),
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
