import 'package:chatapp/core/helper/app_extention.dart';
import 'package:chatapp/core/routing/app_routes.dart';
import 'package:chatapp/core/styles/app_color.dart';
import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingThirdPart extends StatelessWidget {
  const OnboardingThirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: AppTextStyle.font12GreyWeight700(),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30.h,
          ),
          TextButton(
            onPressed: () {
              context.pushNamed(AppRoutes.login);
            },
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize:
                    WidgetStateProperty.all(const Size(double.infinity, 52)),
                // ignore: deprecated_member_use
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
            child: Text(
              "Get Started",
              style: AppTextStyle.font14WhiteWeight700(context),
            ),
          ),
        ],
      ),
    );
  }
}
