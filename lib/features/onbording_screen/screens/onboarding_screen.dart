import 'package:chatapp/features/onbording_screen/widgets/onboarding_first_part.dart';
import 'package:chatapp/features/onbording_screen/widgets/onboarding_second_part.dart';
import 'package:chatapp/features/onbording_screen/widgets/onboarding_third_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 30.h,
          bottom: 30.h,
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              OnboardingFirstPart(),
              OnboardingSecondPart(),
              OnboardingThirdPart()
            ],
          ),
        ),
      ),
    )));
  }
}
