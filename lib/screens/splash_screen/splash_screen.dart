import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduated_project/core/utils/assets_manager.dart';
import 'package:graduated_project/core/utils/color_manager.dart';
import 'package:graduated_project/screens/login_screen/login_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash_bg.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: AnimatedSplashScreen(
                backgroundColor: Colors.transparent,
                splash: Image.asset(
                  "assets/images/tanta_university_logo.png",
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                splashIconSize: 400,
                duration: 900,
                splashTransition: SplashTransition.fadeTransition,
                disableNavigation: false,
                curve: Curves.easeInOut,
                pageTransitionType: PageTransitionType.fade,
                centered: true,
                animationDuration: const Duration(seconds: 1),
                nextScreen: const LoginPage(),
              ),
            ),
            Positioned(
                bottom: 270.h,
                left: 0,
                right: 0,
                child: SizedBox(
                  child: DefaultTextStyle(
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: ColorManager.colorWhite,
                        fontFamily: 'readex',
                        //fontFamilyFallback: ['ArabicFallbackFont'],
                        fontWeight: FontWeight.bold),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          'welcome to tanta university'.tr(),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
