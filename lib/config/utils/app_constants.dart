import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';
import 'package:wtew22/features/wetw22/domain/entities/note.dart';
import 'package:wtew22/features/wetw22/domain/entities/sections.dart';
import 'package:wtew22/features/wetw22/domain/entities/smu_thought.dart';

class AppConstants {
  static const String sessionPlace = "K1 - Electrical Building";

  static const BaseSection subjects = Subjects(
    image: "",
    notes: [
      Note(
        id: "1",
        title: "Title",
        description: [""],
        imagePath: AppAssets.smuLogo,
      ),
    ],
    courses: [
      Activity(
        id: "1",
        order: 1,
        instructor: "Toka Ismail",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Production Course",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Production",
        description: "Production Course",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "2",
        order: 2,
        instructor: "Rewan Maher",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Math, Mechanics and Physics",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Math, Mechanics and Physics",
        description: "Math, Mechanics and Physics Courses",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "3",
        order: 3,
        instructor: "Shahd Ashraf",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Engineering Drawing",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Engineering Drawing",
        description: "Engineering Drawing Course",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "4",
        order: 4,
        instructor: "Rahma Ibrahim",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Chemistry",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Chemistry",
        description: "Chemistry Course",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "5",
        order: 5,
        instructor: "Safaa Adel",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Humanities",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Humanities",
        description: "Chemistry Courses",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
    ],
  );

  static const BaseSection comparisons = Comparisons(
    image: "",
    notes: [
      Note(
        id: "1",
        title: "Title",
        description: ["asdsad", "asdsadasd"],
        imagePath: AppAssets.smuLogo,
      ),
    ],
    comparisons: [
      Activity(
        id: "1",
        order: 1,
        instructor: "Hana Samy & Menna Magdy",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "GSP vs SSP",
          description: ["Description"],
          imagePath: AppAssets.smuLogo,
        ),
        title: "GSP vs SSP",
        description: "Difference Between GSP and SSP",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "2",
        order: 2,
        instructor: "Youssef Elmedany",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Computer vs Computer Science",
          description: ["qwdqwd", "qwdqwdq"],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Computer vs Computer Science",
        description:
            "Difference Between Computer Engineering and Computer Science",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "3",
        order: 3,
        instructor: "Aya Ali",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Civil Work and Technical Teams",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Civil Work and Technical Teams",
        description: "What are Civil Work and Technical Teams",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "4",
        order: 4,
        instructor: "Nehal Osama",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Architecture",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Architecture",
        description: "Difference Between Architecture in Engneering and Others",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
    ],
  );

  static const BaseSection softSkills = SoftSkills(
    image: "",
    notes: [
      Note(
        id: "1",
        title: "Title",
        description: [""],
        imagePath: AppAssets.smuLogo,
      ),
    ],
    softSkills: [
      Activity(
        id: "1",
        order: 1,
        instructor: "Ranim Elgebaly",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Time Management",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Time Management",
        description: "How To Manage Time",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "2",
        order: 2,
        instructor: "Toqa Elbadawy",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Self Learning",
          description: [""],
          imagePath: AppAssets.smuLogo,
        ),
        title: "Self Learning",
        description: "Self Learning process",
        date: "date",
        startTime: "startTime",
        endTime: "endTime",
        password: "",
      ),
    ],
  );

  static BaseSection gpa = GPA(
    image: "",
    notes: const [
      Note(
        id: "1",
        title: "Title",
        description: [""],
        imagePath: AppAssets.smuLogo,
      ),
    ],
    gpa: const Activity(
      id: "1",
      order: 1,
      instructor: "Youssef Ashraf",
      place: sessionPlace,
      activityType: ActivityType.session,
      note: Note(
        id: "1",
        title: "GPA Credit Hour System",
        description: [""],
        imagePath: AppAssets.smuLogo,
      ),
      title: "GPA Credit Hour System",
      description: "GPA, Credit Hour System",
      date: "dayDate",
      startTime: "startDate",
      endTime: "endDate",
      password: "",
    ),
  );

  static const SMUThoughts smu = SMUThoughts(
    title: "Grande Finale",
    description: "We're Here for you",
    imagePath: AppAssets.smuLogo,
  );

  static Widget buildHelpButton(BuildContext context) {
    return IconButton(
      onPressed: () => AwesomeDialog(
        context: context,
        animType: AnimType.SCALE,
        customHeader: Image.asset(AppAssets.smuLogoNoText),
        title: AppStrings.welcomeMessage,
        desc: AppStrings.eventDiscription,
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

  static Future<dynamic> help(BuildContext context) {
    return AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      customHeader: Image.asset(AppAssets.smuLogoNoText),
      title: AppStrings.welcomeMessage,
      desc: AppStrings.eventDiscription,
      btnOkText: AppStrings.goToSmuPage,
      btnOkOnPress: () async => await launchUrl(
        Uri.parse(AppStrings.smuPage),
      ),
      btnOkColor: AppColors.primaryColor,
      btnCancelText: AppStrings.cancel,
      btnCancelOnPress: () {},
    ).show();
  }
}
