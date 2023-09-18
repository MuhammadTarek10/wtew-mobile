import 'package:flutter/material.dart';
import 'package:wtew/app/app.dart';
import 'package:wtew/core/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const WTEWApp());
}
