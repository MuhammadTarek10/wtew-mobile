import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
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
      notes: [
        Note(
          id: "1",
          title: "Note 1",
          description: "Content 1",
        )
      ],
      activities: [
        Activity(
          id: "1",
          order: 1,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 1",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 2,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 1",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 3,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 1",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 4,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 1",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
      ],
      date: "10-10-2022",
    ),
    Day(
      id: "1",
      name: "Day 2",
      notes: [
        Note(
          id: "1",
          title: "Note 2",
          description: "Content 2",
        )
      ],
      activities: [
        Activity(
          id: "1",
          order: 1,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 2",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 2,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 2",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 3,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 2",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 4,
          instructor: "Tarek",
          activityType: ActivityType.session,
          notes: [
            Note(
              id: "1",
              title: "Note 1",
              description: "Description 1",
            ),
            Note(
              id: "2",
              title: "Note 2",
              description: "Description 2",
            ),
          ],
          title: "Session 2",
          description: "About",
          startDate: "9:30",
          endDate: "10:00",
        ),
      ],
      date: "10-10-2022",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.homeViewTitle),
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
      onTap: () =>
          Navigator.pushNamed(context, AppRoutes.timelineRoute, arguments: day),
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
