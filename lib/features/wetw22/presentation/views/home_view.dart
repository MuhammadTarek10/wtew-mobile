import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';
import 'package:wtew22/features/wetw22/presentation/widgets/day_card.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<Day> days = const [
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
        itemBuilder: (context, index) => DayCard(
          day: days[index],
          length: days.length,
        ),
        itemCount: days.length,
      ),
    );
  }
}
