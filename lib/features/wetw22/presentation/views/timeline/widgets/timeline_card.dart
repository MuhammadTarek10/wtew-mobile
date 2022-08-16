import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';

class WTEWTimeline extends StatelessWidget {
  const WTEWTimeline({
    Key? key,
    required this.timeline,
    required this.length,
  }) : super(key: key);

  final Activity timeline;
  final int length;

  // get a random color
  Color getRandomColor() {
    final random = Random();
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(10), random.nextInt(255));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, AppRoutes.timelineNoteRoute,
          arguments: timeline.notes),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 2,
                color: timeline.order == 1 ? Colors.white : Colors.black,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  timeline.activityType == ActivityType.session
                      ? Icons.people
                      : Icons.foundation,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 50,
                width: 2,
                color: timeline.order == length ? Colors.white : Colors.black,
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.primaryColor, width: 2),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  ),
                ],
              ),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            timeline.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            timeline.description,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            "${timeline.startDate} - ${timeline.endDate}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(AppAssets.smuLogo),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
