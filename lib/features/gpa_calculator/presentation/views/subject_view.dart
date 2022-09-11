import 'package:flutter/material.dart';

class SubjectsView extends StatefulWidget {
  const SubjectsView({Key? key}) : super(key: key);

  @override
  State<SubjectsView> createState() => _SubjectsViewState();
}

class _SubjectsViewState extends State<SubjectsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Subjects"),
      ),
    );
  }
}
