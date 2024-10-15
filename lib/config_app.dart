import 'package:chatapp/core/routing/app_routes.dart';
import 'package:chatapp/core/routing/app_routing.dart';
import 'package:chatapp/core/styles/app_color.dart';
import 'package:chatapp/features/splash_screen/ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfigApp extends StatelessWidget {
  final AppRouting appRouting;
  const ConfigApp({super.key, required this.appRouting});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData.light(),
        // themeMode: ThemeMode.system,
        theme: ThemeData(
            primaryColor: AppColor.primaryColor,
            scaffoldBackgroundColor: Colors.white),
        initialRoute: AppRoutes.onBoarding,
        onGenerateRoute: appRouting.generateRoute,
      ),
    );
  }
}
