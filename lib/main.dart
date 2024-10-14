import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduated_project/config/routes_manager/route_generator.dart';
import 'package:graduated_project/config/routes_manager/routes.dart';
import 'package:graduated_project/screens/login_screen/login_page.dart';

void main() {
  runApp(const Tanta_University());
}


class Tanta_University extends StatelessWidget {
  const Tanta_University({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}