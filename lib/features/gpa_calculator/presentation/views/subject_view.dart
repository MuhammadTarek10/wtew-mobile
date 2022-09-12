import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/gpa_calculator/presentation/controllers/gpa_calculator_controller.dart';
import 'package:wtew22/features/gpa_calculator/presentation/widgets/subject_inputs.dart';

class SubjectsView extends StatefulWidget {
  const SubjectsView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final GPACalculatorController controller;

  @override
  State<SubjectsView> createState() => _SubjectsViewState();
}

class _SubjectsViewState extends State<SubjectsView> {
  List<SubjectInputData> data =
      List.generate(1, (index) => SubjectInputData(), growable: true);

  List<SubjectInputsWidget>? subjects;

  int counter = 1;

  @override
  void initState() {
    subjects = List.generate(
        1, (index) => SubjectInputsWidget(data: data[index]),
        growable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: context.height * 0.25,
                  child: Image.asset(AppAssets.subject),
                ),
              ),
              ListView.builder(
                itemCount: subjects!.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: context.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SubjectInputsWidget(data: data[index]),
                        SizedBox(width: context.width * 0.02),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: context.height * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      if (await widget.controller.isSemesterRight(data)) {
                        widget.controller.addSemester();
                        Navigator.pop(context);
                      } else {
                        AppConstants.showToast(
                            message: AppStrings.invalidInputs);
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: context.width * 0.04,
                      ),
                      width: context.width * 0.35,
                      height: context.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(context.width * 0.05),
                      ),
                      child: Center(
                        child: Text(
                          "Add Semester",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        data.add(SubjectInputData());
                        subjects!
                            .add(SubjectInputsWidget(data: data[counter++]));
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: context.width * 0.04,
                      ),
                      width: context.width * 0.35,
                      height: context.height * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(context.width * 0.05),
                      ),
                      child: Center(
                        child: Text(
                          "Add Subject",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: context.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.04),
            ],
          ),
        ));
  }
}
