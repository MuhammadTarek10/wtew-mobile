import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_assets.dart';
import 'package:wtew22/config/utils/app_colors.dart';
import 'package:wtew22/config/utils/app_media_query.dart';
import 'package:wtew22/config/utils/app_strings.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          padding: EdgeInsets.only(
            top: context.height * 0.05,
            bottom: context.height * 0.01,
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.accentColor.withOpacity(0.1),
                radius: context.width * 0.2,
                backgroundImage: const AssetImage(AppAssets.smuLogoNoText),
              ),
              const Text(AppStrings.appName),
            ],
          ),
        ),
      ),
    );
  }
}
