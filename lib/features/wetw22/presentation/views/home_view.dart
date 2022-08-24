import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/day.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';
import 'package:wtew22/features/wetw22/presentation/widgets/day_card.dart';

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
          description: ["Content 1"],
          imagePath: AppAssets.smuLogo,
        )
      ],
      activities: [
        Activity(
          id: "1",
          order: 1,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: [
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
              "Description 1",
            ],
            imagePath: AppAssets.smuLogo,
          ),
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
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
          description: ["Content 2"],
          imagePath: AppAssets.smuLogo,
        )
      ],
      activities: [
        Activity(
          id: "1",
          order: 1,
          instructor: "Tarek",
          activityType: ActivityType.session,
          place: "K1 - Electrical Building",
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
          note: Note(
            id: "1",
            title: "Note 1",
            description: ["Description 1"],
            imagePath: AppAssets.smuLogo,
          ),
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
        backgroundColor: AppColors.accentColor,
        title: const Text(
          AppStrings.welcomeMessage,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          buildHelpButton(context),
        ],
      ),
      body: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) {
          return DayCard(
            day: days[index],
            length: days.length,
          );
        },
      ),
    );
  }

  Widget buildHelpButton(BuildContext context) {
    return IconButton(
      onPressed: () => AwesomeDialog(
        context: context,
        animType: AnimType.SCALE,
        customHeader: Image.asset(AppAssets.smuLogoNoText),
        title: AppStrings.welcomeMessage,
        desc: "ASD\nASD\nASD\nASD\nASD\nASD\n",
        btnOkText: AppStrings.goToSmuPage,
        btnOkOnPress: () async => await launchUrl(
          Uri.parse(AppStrings.smuPage),
        ),
        btnOkColor: AppColors.primaryColor,
        btnCancelText: AppStrings.cancel,
        btnCancelOnPress: () {},
      ).show(),
      icon: const Icon(
        Icons.help,
        color: Colors.black,
      ),
    );
  }
}
