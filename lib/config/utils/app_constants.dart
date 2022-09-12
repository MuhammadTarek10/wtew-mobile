import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_strings.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/subject.dart';
import 'package:wtew22/features/talks/domain/entities/activity.dart';
import 'package:wtew22/features/talks/domain/entities/note.dart';
import 'package:wtew22/features/talks/domain/entities/sections.dart';
import 'package:wtew22/features/talks/domain/entities/smu_thought.dart';

class AppConstants {
  static const String sessionPlace = "K1 - Electrical Building";

  // database
  static const int databaseVersion = 1;
  static const String databaseName = "gpa-calculator";
  static const String databaseSemesterTableName = "semesters";
  static const String databaseColSemesterId = "id";
  static const String databseColSemesterTerm = "term";
  static const String databaseColSemeterGPA = "gpa";
  static const String databaseColSemesterCredits = "credits";

  static const String databaseSubjectTableName = "subjects";
  static const String databaseColSubjectSemesterId = "semester_id";
  static const String databaseColSubjectName = "name";
  static const String databaseColSubjectHours = "hours";
  static const String databseColSubjectGrade = "grade";

  static const BaseSection subjects = Subjects(
    image: AppAssets.subjects,
    notes: [
      Note(
        id: "1",
        title: "Title",
        description: [
          "Note1",
          "Note2",
          "Note3",
          "Note4",
          "Very Looooooooooooooong Note",
          "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
        ],
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.production,
        ),
        activityIcon: AppAssets.productionIcon,
        title: "Production",
        description: "Production",
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
          title: "Math and Mechanics",
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.mathAndMechanics,
        ),
        activityIcon: AppAssets.mathAndMechanicsIcon,
        title: "Math and Mechanics",
        description: "Math and Mechanic",
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.drawing,
        ),
        activityIcon: AppAssets.drawingIcon,
        title: "Engineering Drawing",
        description: "Engineering Drawing",
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.chemistry,
        ),
        activityIcon: AppAssets.chemistryIcon,
        title: "Chemistry",
        description: "Chemistry",
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.humanities,
        ),
        activityIcon: AppAssets.humanitiesIcon,
        title: "Humanities",
        description: "Humanities",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
      Activity(
        id: "6",
        order: 6,
        instructor: "Rowan Mahmoud",
        place: sessionPlace,
        activityType: ActivityType.session,
        note: Note(
          id: "1",
          title: "Physics",
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.physics,
        ),
        activityIcon: AppAssets.physicsIcon,
        title: "Physics",
        description: "Physics",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
    ],
  );

  static const BaseSection comparisons = Comparisons(
    image: AppAssets.comparisons,
    notes: [
      Note(
        id: "1",
        title: "Title",
        description: [
          "Note1",
          "Note2",
          "Note3",
          "Note4a",
          "Very Looooooooooooooong Note",
          "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
        ],
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4a",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.gspVsSsp,
        ),
        activityIcon: AppAssets.gspVsSspIcon,
        title: "GSP vs SSP",
        description: "GSP vs SSP",
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4a",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.computer,
        ),
        activityIcon: AppAssets.computerIcon,
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
          description: [
            "Civil Work<T>",
            "Civil is nonprofit work aims to helping others.",
            "Concentrate on your soft skills.",
            "Call opens at the vacation of the first term (or before).",
            "Organizations and logistics (OL): responsible for decoration, gifts, and hosting.",
            "Public Relations (PR): responsible for public relations, and making deals.",
            "Project and planning (PP): responsible for making sessions, presentations, and plans for new projects and events.",
            "Human resources (HC/HR): responsible for evaluating the staff’s work.",
            "Media marketing (MM): responsible for making posts and marketing campaigns for any project or event.",
            "Technical Teams<T>",
            "Working on increasing your technical knowledge.",
            "Working on your hard skills.",
            "No targeted age or studying year to get in.",
            "The call opens in the summer vacation.",
            "ROV: Torpedo, Robo-Tech, MIA, Croco-marine, Aquaphoton.",
            "Flights: Alex Eagle, Lycans.",
            "Cars: Mind cloud, Robo-Tech, MIA, Tachyons, ECO-Marathon, AU-motors.",
            "Architecture and Civil: ASCE, EBC.",
            "Nontechnical teams: SPE, Science club, Meca-union, ACM, Purity, EED, Science club, N-mole.",
          ],
          imagePath: AppAssets.civilVsTech,
        ),
        activityIcon: AppAssets.civilAndTechnicalIcon,
        title: "Civil Work and Technical Teams",
        description: "Civil Work and Technical Teams",
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.archtecture,
        ),
        activityIcon: AppAssets.archetictureIcon,
        title: "Architecture",
        description: "Architecture",
        date: "dayDate",
        startTime: "startDate",
        endTime: "endDate",
        password: "",
      ),
    ],
  );

  static const BaseSection softSkills = SoftSkills(
    image: AppAssets.softSkills,
    notes: [
      Note(
        id: "1",
        title: "Title",
        description: [
          "Note1",
          "Note2",
          "Note3",
          "Note4",
          "Very Looooooooooooooong Note",
          "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
        ],
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.timeManagment,
        ),
        activityIcon: AppAssets.timeManagementIcon,
        title: "Time Management",
        description: "Time Management",
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
          description: [
            "Note1",
            "Note2",
            "Note3",
            "Note4",
            "Very Looooooooooooooong Note",
            "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
          ],
          imagePath: AppAssets.selfLearning,
        ),
        activityIcon: AppAssets.selcLearningIcon,
        title: "Self Learning",
        description: "Self Learning",
        date: "date",
        startTime: "startTime",
        endTime: "endTime",
        password: "",
      ),
    ],
  );

  static BaseSection gpa = GPA(
    image: AppAssets.gpa,
    notes: const [
      Note(
        id: "1",
        title: "Title",
        description: [
          "Note1",
          "Note2",
          "Note3",
          "Note4",
          "Very Looooooooooooooong Note",
          "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
        ],
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
        description: [
          "Note1",
          "Note2",
          "Note3",
          "Note4",
          "Very Looooooooooooooong Note",
          "Another Very Loooooooooooooooooooooooooooooooooooooooooooooooooooooooong Note"
        ],
        imagePath: AppAssets.gpaS,
      ),
      activityIcon: AppAssets.gpaIcon,
      title: "Credit Hour System",
      description: "Credit Hour System",
      date: "dayDate",
      startTime: "startDate",
      endTime: "endDate",
      password: "",
    ),
  );

  static List<Semester> semesters = const [
    Semester(
      id: "!2",
      term: 1,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 3, grade: Grades.a),
        Subject(semesterId: "!2", hours: 3, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 3.81,
    ),
    Semester(
      id: "!2",
      term: 2,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 3, grade: Grades.a),
        Subject(semesterId: "!2", hours: 1, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 3.16,
    ),
    Semester(
      id: "!2",
      term: 3,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 1, grade: Grades.a),
        Subject(semesterId: "!2", hours: 1, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.26,
    ),
    Semester(
      id: "!2",
      term: 1,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 3, grade: Grades.a),
        Subject(semesterId: "!2", hours: 3, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.24,
    ),
    Semester(
      id: "!2",
      term: 2,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 3, grade: Grades.a),
        Subject(semesterId: "!2", hours: 1, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.56,
    ),
    Semester(
      id: "!2",
      term: 3,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 1, grade: Grades.a),
        Subject(semesterId: "!2", hours: 1, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.36,
    ),
    Semester(
      id: "!2",
      term: 1,
      credits: 8,
      subjects: [
        Subject(semesterId: "!2", hours: 3, grade: Grades.a),
        Subject(semesterId: "!2", hours: 3, grade: Grades.bMinus),
        Subject(semesterId: "!2", hours: 2, grade: Grades.cPlus),
      ],
      gpa: 2.48,
    ),
  ];

  static const SMUThoughts smu = SMUThoughts(
    title: "Grande Finale",
    description: "",
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

  static void showToast({
    required String message,
    Color? color,
    ToastGravity? gravity,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: color ?? AppColors.hint,
      gravity: gravity ?? ToastGravity.BOTTOM,
    );
  }
}
