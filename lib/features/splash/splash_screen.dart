import 'package:afandem_app/features/onboarding/onboarding_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          splash: Image(
            image: const AssetImage("assets/images/afandem_logo.png"),
            width: 249.w,
            height: 274.h,
          ),
          nextScreen: const OnboardingScreen(),
          duration: 1500,
          splashTransition: SplashTransition.fadeTransition,
          animationDuration: const Duration(
            milliseconds: 700,
          ),
        ),
      ),
    );
  }
}
