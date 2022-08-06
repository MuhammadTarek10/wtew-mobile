import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Day> days = [
    Day(
      id: "1",
      name: "Day 1",
      activities: [
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
      ],
      notes: [
        Note(
          id: "1",
          title: "Tarek Note",
          description: "Tarek Note Description",
        ),
      ],
      date: "10-10-2022",
    ),
    Day(
      id: "1",
      name: "Day 2",
      activities: [
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
      ],
      notes: [
        Note(
          id: "1",
          title: "Tarek Note",
          description: "Tarek Note Description",
        ),
      ],
      date: "10-10-2022",
    ),
    Day(
      id: "1",
      name: "Day 3",
      activities: [
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
      ],
      notes: [
        Note(
          id: "1",
          title: "Tarek Note",
          description: "Tarek Note Description",
        ),
      ],
      date: "10-10-2022",
    ),
    Day(
      id: "1",
      name: "Day 4",
      activities: [
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
      ],
      notes: [
        Note(
          id: "1",
          title: "Tarek Note",
          description: "Tarek Note Description",
        ),
      ],
      date: "10-10-2022",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homeViewTitle),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => HomeCard(
                day: days[index],
                length: days.length,
              ),
          itemCount: days.length),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.day,
    required this.length,
  }) : super(key: key);

  final Day day;
  final int length;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, AppRoutes.timelineRoute),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / (length + 1),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  day.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
