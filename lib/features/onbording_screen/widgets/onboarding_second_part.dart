import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingSecondPart extends StatelessWidget {
  const OnboardingSecondPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 30.w),
          child: SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
        ),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: const [0.14, 0.4],
            )),
            child: Image.asset("assets/imgs/onboarding_doctor.png")),
        Positioned(
            bottom: 30.h,
            right: 5.w,
            left: 5.w,
            child: Text(
              "Best Doctor Appointment App",
              textAlign: TextAlign.center,
              style: AppTextStyle.font32BlueWeight700()
                  .copyWith(height: 1.4, letterSpacing: 3.w),
            )),
      ],
    );
  }
}
