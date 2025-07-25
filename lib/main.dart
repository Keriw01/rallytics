import 'package:flutter/material.dart';
import 'package:rallytics/app/app.dart';
import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/core/config/firebase_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  await FirebaseConfig.initialize();

  runApp(const App());
}
