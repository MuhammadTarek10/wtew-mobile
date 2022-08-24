import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';
import 'package:wtew22/config/utils/app_theme.dart';

class WTEWApp extends StatefulWidget {
  const WTEWApp({Key? key}) : super(key: key);

  @override
  State<WTEWApp> createState() => _WTEWAppState();
}

class _WTEWAppState extends State<WTEWApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getAppTheme(),
      onGenerateRoute: AppRouteGenerator.generateRoute,
    );
  }
}
