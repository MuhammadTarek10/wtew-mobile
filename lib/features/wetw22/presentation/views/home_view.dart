import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/config/utils/app_values.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 2,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 3,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 4,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
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
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 2,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 3,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
          startDate: "9:30",
          endDate: "10:00",
        ),
        Activity(
          id: "1",
          order: 4,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
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
          dayDate: "25 September",
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
      backgroundColor: AppColors.accentColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.accentColor,
        title: const Text(
          AppStrings.welcomeMessage,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: days[0].activities.length,
              itemBuilder: (context, index) {
                return TimelineTile(
                  activity: days[0].activities[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TimelineTile extends StatelessWidget {
  const TimelineTile({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Text(
                    activity.place,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.02,
                  ),
                  child: Text(
                    activity.dayDate,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width * AppPadding.headerPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.primaryColor,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width *
                                AppPadding.headerPadding,
                          ),
                          child: Text(
                            activity.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height *
                                  AppPadding.headerPadding,
                            ),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002),
                        Container(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.03,
                          ),
                          child: Text(
                            activity.instructor,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.primaryColor,
                          blurRadius: 5,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          activity.startDate,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.017,
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.002),
                        Text(
                          activity.endDate,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.017,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  const Headline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      child: Text(
        AppStrings.welcomeMessage,
        style: TextStyle(
          color: Colors.black,
          fontSize: MediaQuery.of(context).size.height * 0.025,
        ),
      ),
    );
  }
}
