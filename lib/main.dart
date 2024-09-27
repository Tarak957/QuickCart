import 'dart:developer';

import 'package:ecommerce/firebase_options.dart';
import 'package:ecommerce/model/repositories/auth_repository.dart';
import 'package:ecommerce/view/personalisation/splash_screen/splash_screen.dart';
import 'package:ecommerce/view/utils/constants/inti_controllers.dart';
import 'package:ecommerce/view/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  InitControllers().initControllers();
  //!Getx storage
  await GetStorage.init();
  //!Firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) {
    Get.put(AuthenticationRepository());
    log("--- FIREBASE INITIALISED FOR ${value.name} ---");
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}
