import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rallytics/app/app.dart';
import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const App());
}
