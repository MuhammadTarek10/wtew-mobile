import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/talks/domain/entities/sections.dart';
import 'package:wtew22/features/talks/presentation/views/timeline/pages/timeline_view.dart';

class SectionView extends StatefulWidget {
  const SectionView({Key? key, required this.section}) : super(key: key);

  final BaseSection section;

  @override
  State<SectionView> createState() => _SectionViewState();
}

class _SectionViewState extends State<SectionView> {
  var currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.timelineViewTitle)),
      body: TimelineView(section: widget.section),
    );
  }
}
