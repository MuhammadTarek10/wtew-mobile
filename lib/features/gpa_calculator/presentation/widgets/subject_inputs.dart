import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';

class SubjectInputsWidget extends StatefulWidget {
  const SubjectInputsWidget({
    Key? key,
    required this.data,
    required this.onDelete,
  }) : super(key: key);

  final SubjectInputData data;
  final VoidCallback onDelete;

  @override
  State<SubjectInputsWidget> createState() => _SubjectInputsWidgetState();
}

class _SubjectInputsWidgetState extends State<SubjectInputsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.width * 0.03,
          ),
          width: context.width * 0.5,
          child: TextField(
            controller: widget.data.subjectController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: AppStrings.subjectNameHint,
              labelStyle: TextStyle(
                fontSize: context.width * 0.03,
              ),
            ),
          ),
        ),
        SizedBox(
          width: context.width * 0.15,
          child: TextField(
            controller: widget.data.hoursController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: AppStrings.hoursHint,
              labelStyle: TextStyle(
                fontSize: context.width * 0.03,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: context.width * 0.05),
          height: context.height * 0.05,
          child: DropdownButton<String>(
            iconSize: context.height * 0.03,
            value: widget.data.value,
            items: widget.data.grades.map(buildGrade).toList(),
            onChanged: (value) {
              setState(() {
                widget.data.value = value;
              });
            },
          ),
        ),
        SizedBox(width: context.width * 0.05),
        InkWell(
          onTap: widget.onDelete,
          child: Container(
            width: context.width * 0.07,
            height: context.width * 0.07,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black.withOpacity(0.5),
              ),
              borderRadius: BorderRadius.circular(context.width * 0.01),
            ),
            child: Center(
                child: Text(
              "-",
              style: TextStyle(fontSize: context.width * 0.05),
            )),
          ),
        ),
      ],
    );
  }

  DropdownMenuItem<String> buildGrade(String grade) {
    return DropdownMenuItem(
      value: grade,
      child: Text(grade),
    );
  }
}

class SubjectInputData {
  List<String> grades = [
    "A+",
    "A",
    "A-",
    "B+",
    "B",
    "B-",
    "C+",
    "C",
    "C-",
    "D+",
    "D",
    "F",
  ];
  String? value;

  TextEditingController subjectController = TextEditingController();
  TextEditingController hoursController = TextEditingController();
}
