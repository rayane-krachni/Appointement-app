import 'package:chatapp/core/styles/app_color.dart';
import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final bool? isObscure;
  final String hintText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.isObscure,
    required this.hintText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: AppColor.primaryColor, width: 1.3),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: AppColor.lighterGreyColor, width: 1.3),
            ),
        hintStyle: AppTextStyle.font12GreyWeight700().copyWith(
          color: AppColor.lightGrey,
        ),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscure ?? false,
      style: AppTextStyle.font14DarkBlueWeight400(),
    );
  }
}
