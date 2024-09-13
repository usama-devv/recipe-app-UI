import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app_ui/utils/constants/colors.dart';
import 'package:recipe_app_ui/utils/constants/image_strings.dart';
import 'package:recipe_app_ui/views/get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const GetStartedScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UColors.primaryColor,
      body: Center(
        child: Image.asset(
          UImages.splashLogo,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
