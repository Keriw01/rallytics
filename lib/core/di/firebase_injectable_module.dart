import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/config/app_config.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;

  @preResolve
  @lazySingleton
  Future<GoogleSignIn> googleSignIn(AppConfig appConfig) async {
    final googleSignIn = GoogleSignIn.instance;

    await googleSignIn.initialize(serverClientId: appConfig.googleWebClientId);

    return googleSignIn;
  }
}
