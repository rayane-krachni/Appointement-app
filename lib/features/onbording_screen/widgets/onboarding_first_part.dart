import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingFirstPart extends StatelessWidget {
  const OnboardingFirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svgs/docdoc_logo.svg",
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          "Appointments App",
          style: AppTextStyle.font24Weight700(context),
        )
      ],
    );
  }
}
