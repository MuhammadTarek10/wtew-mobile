import 'package:flutter/material.dart';
import 'package:wtew/features/talks/domain/entities/sections.dart';
import 'package:wtew/features/talks/presentation/views/timeline/widgets/timeline_card.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({Key? key, required this.section}) : super(key: key);

  final BaseSection section;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: section.activities.length,
        itemBuilder: (context, index) => WTEWTimeline(
          activity: section.activities[index],
          length: section.activities.length,
        ),
      ),
    );
  }
}
