import 'package:firebase_core/firebase_core.dart';

import 'package:rallytics/firebase_options.dart' as firebase_options;

class FirebaseConfig {
  static Future<void> initialize() async {
    await Firebase.initializeApp(
      options: firebase_options.DefaultFirebaseOptions.currentPlatform,
    );
  }
}
