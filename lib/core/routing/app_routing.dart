import 'package:chatapp/core/routing/app_routes.dart';
import 'package:chatapp/features/authentication/ui/screesns/login_screen.dart';
import 'package:chatapp/features/authentication/ui/screesns/register_screen.dart';
import 'package:chatapp/features/home_page/ui/screens/home_screen.dart';
import 'package:chatapp/features/onbording_screen/screens/onboarding_screen.dart';
import 'package:chatapp/features/splash_screen/ui/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text('No route defined for name'),
                  ),
                ));
    }
  }
}
