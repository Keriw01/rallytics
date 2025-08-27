import 'package:rallytics/firebase_options_prod.dart';

import 'package:rallytics/main.dart';

void main() async {
  runMainApp(
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
    environment: 'prod',
  );
}
