import 'package:chatapp/core/styles/app_color.dart';
import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  final String? buttonName;
  final VoidCallback onPressedAction;
  const AppButton({super.key,required this.buttonName,required this.onPressedAction});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedAction,
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColor.primaryColor),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
          // ignore: deprecated_member_use
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      child: Text(
        buttonName!,
        style: AppTextStyle.font14WhiteWeight700(context),
      ),
    );
  }
}
