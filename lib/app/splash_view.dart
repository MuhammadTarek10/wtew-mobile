import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wtew/config/app_routes.dart';
import 'package:wtew/config/utils/app_assets.dart';
import 'package:wtew/config/utils/app_colors.dart';
import 'package:wtew/config/utils/app_values.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  void _startDelay() {
    _timer = Timer(const Duration(seconds: AppTimes.splashTime), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, AppRoutes.homeRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.splashBackgroundColor,
      body: Center(
        child: Image(
          image: AssetImage(AppAssets.splash),
        ),
      ),
    );
  }
}
