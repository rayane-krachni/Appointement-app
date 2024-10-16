import 'package:chatapp/core/helper/app_space_helper.dart';
import 'package:chatapp/core/styles/app_color.dart';
import 'package:chatapp/core/styles/app_text_style.dart';
import 'package:chatapp/core/widgets/app_button.dart';
import 'package:chatapp/core/widgets/app_text_form_field.dart';
import 'package:chatapp/features/authentication/ui/widgets/already_have_account_text.dart';
import 'package:chatapp/features/authentication/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: AppTextStyle.font24BlueWeight700(),
                ),
                verticalSpace(10),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppTextStyle.font13GreyWeight400()
                      .copyWith(letterSpacing: 1.w),
                ),
                verticalSpace(36),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: "Email",
                      ),
                      verticalSpace(18.h),
                      AppTextFormField(
                        hintText: "Pass word",
                        isObscure: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            !isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColor.lightGrey,
                          ),
                        ),
                      ),
                      verticalSpace(18.h),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Forget Password?",
                                style: AppTextStyle.font14DarkBlueWeight400()
                                    .copyWith(
                                  color: AppColor.primaryColor,
                                ))),
                      ),
                      verticalSpace(30.h),
                      AppButton(
                        buttonName: "Login",
                        onPressedAction: () {},
                      )
                    ],
                  ),
                ),
                verticalSpace(20),
                const TermsAndCondition(),
                verticalSpace(20),
                const AlreadyHaveAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
