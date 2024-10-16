import 'package:chatapp/core/styles/app_color.dart';
import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: "Already have an account? ",
              style: AppTextStyle.font13GreyWeight400(),
              children: [
            TextSpan(
              text: "Login",
              style: AppTextStyle.font13GreyWeight400().copyWith(
                  fontSize: 13.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold),
            )
          ])),
    );
  }
}
