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
        1,
        (index) => SubjectInputsWidget(
              data: data[index],
              onDelete: () => onDelete(data[index]),
            ),
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
                      SubjectInputsWidget(
                        data: data[index],
                        onDelete: () => onDelete(data[index]),
                      ),
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
                buildButton(
                  context: context,
                  onTap: () async {
                    if (await widget.controller.isSemesterRight(data)) {
                      widget.controller.addSemester();
                      Navigator.pop(context);
                    } else {
                      AppConstants.showToast(message: AppStrings.invalidInputs);
                    }
                  },
                  title: AppStrings.addSemester,
                ),
                buildButton(
                  context: context,
                  onTap: () {
                    setState(() {
                      data.add(SubjectInputData());
                      subjects!.add(
                        SubjectInputsWidget(
                          onDelete: () => onDelete(data[counter]),
                          data: data[counter++],
                        ),
                      );
                    });
                  },
                  title: AppStrings.addSubject,
                ),
              ],
            ),
            SizedBox(height: context.height * 0.04),
          ],
        ),
      ),
    );
  }

  Widget buildButton({
    required BuildContext context,
    required VoidCallback onTap,
    required String title,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          left: context.width * 0.04,
          right: context.width * 0.04,
        ),
        width: context.width * 0.35,
        height: context.height * 0.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.width * 0.05),
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: context.width * 0.04,
            ),
          ),
        ),
      ),
    );
  }

  void onDelete(SubjectInputData data) {
    setState(() {
      this.data.remove(data);
      subjects!.removeWhere((element) => element.data == data);
      --counter;
    });
  }
}
