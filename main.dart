
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sms_app/data/repositories/authentication_repository.dart';
import 'package:sms_app/firebase_options.dart';
import 'package:sms_app/my_app.dart';

Future<void> main() async {

  /// widgetsFlutterBinding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// FlutterNativeSplash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Get Storage Initialization
    await GetStorage.init();
   //Initializeable publishable key
  //  Stripe.publishableKey = UKeys.stripePublishableKey;
  // Protrait Up the Device
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthenticationRepository());
  });
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const MyApp());
}
