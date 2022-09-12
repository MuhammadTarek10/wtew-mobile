import 'package:flutter/material.dart';
import 'package:wtew22/config/utils/app_colors.dart';

class AppTheme {
  static ThemeData getAppTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: AppColors.accentColor,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          )),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
      scaffoldBackgroundColor: AppColors.accentColor,
    );
  }
}
