import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_values.dart';
import 'package:wtew22/features/wetw22/domain/entities/sections.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.section,
  }) : super(key: key);

  final BaseSection section;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.sectionRoute,
        arguments: section,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width * AppSize.horizontalPadding,
          vertical: context.height * AppSize.verticalPadding,
        ),
        child: Container(
          width: context.width * 0.4,
          height: context.height * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.secondaryColor,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.primaryColor,
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ]),
          child: Center(
            child: Text(
              section.title,
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontSize: context.width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
