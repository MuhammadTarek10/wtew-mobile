import 'package:flutter/material.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/widgets/timeline_card.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({Key? key, required this.day}) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: day.activities.length,
        itemBuilder: (context, index) => WTEWTimeline(
            activity: day.activities[index], length: day.activities.length),
      ),
    );
  }
}
