import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/features/wetw22/domain/entities/activity.dart';

class WTEWTimeline extends StatelessWidget {
  const WTEWTimeline({
    Key? key,
    required this.activity,
    required this.length,
  }) : super(key: key);

  final Activity activity;
  final int length;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, AppRoutes.noteDetailRoute,
          arguments: activity.note),
      child: Row(
        children: [
          Column(
            children: [
              activity.order == 1
                  ? Container(
                      height: 50,
                    )
                  : Container(
                      height: 50,
                      width: 2,
                      color: Colors.black,
                    ),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  activity.activityType == ActivityType.session
                      ? Icons.people
                      : Icons.foundation,
                  color: Colors.white,
                ),
              ),
              activity.order == length
                  ? Container(
                      height: 50,
                    )
                  : Container(
                      height: 50,
                      width: 2,
                      color: Colors.black,
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
                            activity.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: context.width * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            activity.instructor,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: context.width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Spacer(),
                        FittedBox(
                          child: Text(
                            activity.place,
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
                    Center(child: Image.asset(AppAssets.smuLogoNoText)),
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
