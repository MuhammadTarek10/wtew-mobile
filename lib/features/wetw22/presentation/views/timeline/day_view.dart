import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/widgets/timeline_card.dart';

class TimelineView extends StatelessWidget {
  const TimelineView({Key? key, required this.day}) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.timelineViewTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: day.activities.length,
          itemBuilder: (context, index) => WTEWTimeline(
              timeline: day.activities[index], length: day.activities.length),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Timeline',
            icon: Icon(Icons.calendar_today),
          ),
          BottomNavigationBarItem(
            label: 'Notes',
            icon: Icon(Icons.note),
          ),
        ],
        currentIndex: 0,
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.pushNamed(context, AppRoutes.timelineRoute,
                  arguments: day);
              break;
            case 1:
              Navigator.pushNamed(context, AppRoutes.noteRoute,
                  arguments: day.notes);
              break;
          }
        },
      ),
    );
  }
}
