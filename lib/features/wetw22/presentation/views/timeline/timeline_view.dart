import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/presentation/views/timeline/widgets/timeline_card.dart';

class TimelineView extends StatelessWidget {
  TimelineView({Key? key}) : super(key: key);

  List<Activity> timelines = [
    Activity(
        id: "1",
        order: 1,
        instructor: "Tarek",
        activityType: ActivityType.session,
        title: "Session",
        description: "About",
        startDate: "9:30",
        endDate: "10:00"),
    Activity(
        id: "1",
        order: 2,
        instructor: "Tarek",
        activityType: ActivityType.session,
        title: "Session",
        description: "About",
        startDate: "9:30",
        endDate: "10:00"),
    Activity(
        id: "1",
        order: 3,
        instructor: "Tarek",
        activityType: ActivityType.workshop,
        title: "Session",
        description: "About",
        startDate: "9:30",
        endDate: "10:00"),
    Activity(
      id: "1",
      order: 4,
      instructor: "Tarek",
      activityType: ActivityType.session,
      title: "Session",
      description: "About",
      startDate: "9:30",
      endDate: "10:00",
    ),
    Activity(
      id: "1",
      order: 5,
      instructor: "Tarek",
      activityType: ActivityType.workshop,
      title: "Session",
      description: "About",
      startDate: "9:30",
      endDate: "10:00",
    ),
    Activity(
      id: "1",
      order: 6,
      instructor: "Tarek",
      activityType: ActivityType.session,
      title: "Session",
      description: "About",
      startDate: "9:30",
      endDate: "10:00",
    ),
    Activity(
      id: "1",
      order: 7,
      instructor: "Tarek",
      activityType: ActivityType.workshop,
      title: "Session",
      description: "About",
      startDate: "9:30",
      endDate: "10:00",
    ),
    Activity(
      id: "1",
      order: 8,
      instructor: "Tarek",
      activityType: ActivityType.workshop,
      title: "Session",
      description: "About",
      startDate: "9:30",
      endDate: "10:00",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.timelineViewTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: timelines.length,
          itemBuilder: (context, index) => WTEWTimeline(
              timeline: timelines[index], length: timelines.length),
        ),
      ),
    );
  }
}
