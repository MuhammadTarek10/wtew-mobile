import 'package:flutter/material.dart';
import 'package:wtew/config/app_routes.dart';
import 'package:wtew/config/utils/app_colors.dart';
import 'package:wtew/config/utils/app_media_query.dart';
import 'package:wtew/config/utils/app_values.dart';
import 'package:wtew/features/talks/domain/entities/sections.dart';

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
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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

class SectionCard extends StatelessWidget {
  const SectionCard({Key? key, required this.section}) : super(key: key);

  final BaseSection section;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.sectionRoute,
        arguments: section,
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.height * 0.1,
              vertical: context.height * 0.1,
            ),
            height: context.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: AppColors.accentColor,
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ],
              image: DecorationImage(
                image: AssetImage(section.imagePath),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1),
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
