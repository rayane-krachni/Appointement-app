import 'package:chatapp/core/styles/app_color.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle font24Weight700(BuildContext context) {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white // Use white for dark mode
          : Colors.black, // Use black for light mode
    );
  }

  static TextStyle font14Weight700(BuildContext context) {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white // Use white for dark mode
          : Colors.black, // Use black for light mode
    );
  }

   static TextStyle font14WhiteWeight700(BuildContext context) {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color:  Colors.white // Use white for dark mode
          // Use black for light mode
    );
  }


  static TextStyle font32BlueWeight700() {
    return TextStyle(
        fontSize: 34.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.primaryColor // Use black for light mode
        );
  }

  static TextStyle font12GreyWeight700() {
    return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      color: AppColor.greyColor, // Use black for light mode
    );
  }
}
