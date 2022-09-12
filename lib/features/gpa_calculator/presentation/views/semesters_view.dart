import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';
import 'package:wtew22/features/gpa_calculator/presentation/controllers/gpa_calculator_controller.dart';
import 'package:wtew22/features/gpa_calculator/presentation/controllers/helper.dart';
import 'package:wtew22/features/gpa_calculator/presentation/widgets/cgpa_widget.dart';
import 'package:wtew22/features/gpa_calculator/presentation/widgets/semester_card.dart';

class SemestersView extends StatefulWidget {
  const SemestersView({Key? key}) : super(key: key);

  @override
  State<SemestersView> createState() => _SemestersViewState();
}

class _SemestersViewState extends State<SemestersView> {
  late GPACalculatorController controller;

  @override
  void initState() {
    super.initState();
    controller = GPACalculatorController(
      bloc: context.read<GPACalculatorBloc>(),
    );
    controller.getSemesters();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GPACalculatorBloc, GPACalculatorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.accentColor,
          appBar: (state is SemestersLoadedSuccessState &&
                  state.semesters.isNotEmpty)
              ? AppBar(
                  elevation: 0,
                  title: Text(
                      "${AppStrings.semesters}: ${getCGPA(state.semesters)}"),
                )
              : AppBar(
                  elevation: 0,
                  title: const Text(AppStrings.semesters),
                ),
          body: BlocConsumer<GPACalculatorBloc, GPACalculatorState>(
            listener: (context, state) {
              log(state.toString());
              if (state is SemesterDeletedSuccessState) {
                controller.getSemesters();
              }
            },
            builder: (context, state) {
              if (state is SemestersLoadedSuccessState) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.semesters.length,
                        itemBuilder: (context, index) {
                          return SemesterCard(
                            controller: controller,
                            semester: state.semesters[index],
                          );
                        },
                      ),
                      SizedBox(height: context.height * 0.1),
                      state.semesters.isNotEmpty
                          ? CGPA(semesters: state.semesters)
                          : Container(),
                    ],
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: AppColors.floatingButtonColor,
              child: const Icon(
                Icons.add,
              ),
              onPressed: () async {
                await Navigator.pushNamed(context, AppRoutes.subjectRoute);
                controller.getSemesters();
              }),
        );
      },
    );
  }
}
