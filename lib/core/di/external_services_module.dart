import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/config/app_config.dart';

class StripeInitializer {}

@module
abstract class ExternalServicesModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @preResolve
  @lazySingleton
  Future<GoogleSignIn> googleSignIn(AppConfig appConfig) async {
    final googleSignIn = GoogleSignIn.instance;

    await googleSignIn.initialize(serverClientId: appConfig.googleWebClientId);

    return googleSignIn;
  }

  @preResolve
  @lazySingleton
  Future<StripeInitializer> configureStripe(AppConfig appConfig) async {
    Stripe.publishableKey = appConfig.stripePublishedKey;
    await Stripe.instance.applySettings();

    return StripeInitializer();
  }
}
