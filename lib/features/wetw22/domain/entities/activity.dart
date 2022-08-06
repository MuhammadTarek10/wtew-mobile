enum ActivityType { session, workshop }

class Activity {
  final String id;
  final int order;
  final String instructor;
  final ActivityType activityType;
  final String title;
  final String description;
  final String startDate;
  final String endDate;

  Activity({
    required this.id,
    required this.order,
    required this.instructor,
    required this.activityType,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
  });
}
