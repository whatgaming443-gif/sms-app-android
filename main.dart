import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:rbl_credit_card_app/features/controllers/gallery/sms/sms_controller.dart';
import 'package:rbl_credit_card_app/firebase_options.dart';

import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) {
        Get.put(SmsController(), permanent: true);
      });

  runApp(const MyApp());
}
