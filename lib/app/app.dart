import 'package:flutter/material.dart';
import 'package:wtew22/config/app_routes.dart';

class WTEWApp extends StatefulWidget {
  const WTEWApp({Key? key}) : super(key: key);

  @override
  State<WTEWApp> createState() => _WTEWAppState();
}

class _WTEWAppState extends State<WTEWApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashRoute,
      onGenerateRoute: AppRouteGenerator.generateRoute,
    );
  }
}
