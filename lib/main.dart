import 'package:flutter/material.dart';
import 'package:wtew22/app/app.dart';
import 'package:wtew22/core/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const WTEWApp());
}
