import 'package:flutter/material.dart';
import 'package:graduated_project/config/routes_manager/routes.dart';
import 'package:graduated_project/screens/home/home_screen.dart';
import 'package:graduated_project/screens/login_screen/login_page.dart';
import 'package:graduated_project/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.authScreen:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case Routes.mainScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
