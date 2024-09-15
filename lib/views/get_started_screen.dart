import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_app_ui/utils/constants/colors.dart';
import 'package:recipe_app_ui/utils/constants/image_strings.dart';
import 'package:recipe_app_ui/views/onboarding/onboarding_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            fit: BoxFit.cover,
            image: AssetImage(UImages.getStartedScreen),
          ),
          // Dark overlay for better text visibility
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          // Content of the screen
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Spacer(),
              // Large text
               Padding(
                padding: const EdgeInsets.only(right: 48.0),
                child: Text(
                  'Explore,\nCook,\nShare.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 70,
                    height: 1.2,
                    color: UColors.textWhiteColor,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: const Offset(0, 4), // Shadow below the text
                        blurRadius: 10.0,     // Soft blur
                        color: Colors.black.withOpacity(0.5), // Shadow color
                      ),
                    ],
                    letterSpacing: 3.0
                  ),
                ),
              ),
              const Spacer(),
              // White curved container for buttons
              Container(
                decoration: const BoxDecoration(
                  color: UColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Get Started Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const OnboardingScreen());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: UColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 18.0, horizontal: 64.0),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: UColors.textWhiteColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Divider with "or"
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'or',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Login text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: UColors.textBlackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to login page
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: UColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
