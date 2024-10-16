import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment:
            Alignment.center, // Ensure container aligns its child to the center
        child: RichText(
          textAlign: TextAlign.center, // Center-align the text
          text: TextSpan(
            text: "By logging in, you agree to our ",
            style: AppTextStyle.font13GreyWeight400()
                .copyWith(fontSize: 13.sp, height: 1.5),
            children: [
              TextSpan(
                text: "Terms & Conditions",
                style: AppTextStyle.font13GreyWeight400().copyWith(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              TextSpan(
                text: " and ",
                style: AppTextStyle.font13GreyWeight400()
                    .copyWith(fontSize: 13.sp),
              ),
              TextSpan(
                text: "Privacy Policy",
                style: AppTextStyle.font13GreyWeight400().copyWith(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
