import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
    return Scaffold(
      backgroundColor: ColorManager.colorWhite,
      body: Stack(
        children: [
          Center(
            child: AnimatedSplashScreen(
              splash: Image.asset(
                ImageAssets.tanta_universityLogo,
                width: 350.w,
              ),
              splashIconSize: 400,
              duration: 1000,
              splashTransition: SplashTransition.sizeTransition,
              disableNavigation: false,
              curve: Curves.ease,
              pageTransitionType: PageTransitionType.rightToLeftWithFade,
              animationDuration: Duration(seconds: 1),
              nextScreen: const LoginPage(),
            ),
          ),
          Positioned(
              bottom: 30.h,
              left: 0,
              right: 0,
              child: SizedBox(
                child: DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: ColorManager.colorBlack,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.normal),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        'جامعة طنطا - البوابة الالكترونية',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
