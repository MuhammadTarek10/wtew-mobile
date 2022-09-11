import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_constants.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_values.dart';
import 'package:wtew22/features/talks/domain/entities/smu_thought.dart';

class SMU extends StatelessWidget {
  const SMU({Key? key, required this.smu}) : super(key: key);

  final SMUThoughts smu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AppConstants.help(context),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.width * AppSize.horizontalPadding,
          vertical: context.height * AppSize.verticalPadding,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: context.width * AppSize.horizontalPadding,
          vertical: context.height * AppSize.verticalPadding,
        ),
        height: context.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.secondaryColor,
            image: DecorationImage(
              image: AssetImage(smu.imagePath),
            ),
            boxShadow: const [
              BoxShadow(
                color: AppColors.primaryColor,
                spreadRadius: 1,
                blurRadius: 10,
              )
            ]),
      ),
    );
  }
}
