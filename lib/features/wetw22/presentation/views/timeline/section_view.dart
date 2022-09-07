import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/features/wetw22/domain/entities/sections.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/note/note_view.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/pages/timeline_view.dart';

class SectionView extends StatefulWidget {
  const SectionView({Key? key, required this.section}) : super(key: key);

  final BaseSection section;

  @override
  // ignore: no_logic_in_create_state
  State<SectionView> createState() => _SectionViewState(section: section);
}

class _SectionViewState extends State<SectionView> {
  _SectionViewState({required this.section});

  final BaseSection section;
  var currentIdx = 0;

  late List<Widget> pages;
  var title = "Timeline";
  List<String> titles = ["Timeline", "Notes"];

  @override
  void initState() {
    super.initState();
    pages = [
      TimelineView(section: section),
      NoteView(notes: section.sectionNotes),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        backgroundColor: AppColors.accentColor,
        body: TimelineView(
          section: section,
        ));
  }
}
