import 'package:flutter/material.dart';
import 'package:recipe_app_ui/utils/constants/colors.dart';
import 'package:recipe_app_ui/utils/constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
