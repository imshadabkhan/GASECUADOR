
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/view/starting/onboarding_screen.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 250.h,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: AssetImage(Assets.splashScreenGuitar), // <- your background image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Splash content
          AnimatedSplashScreen(
            duration: 4000,
            centered: true,
            splashIconSize: 400,
            splash: Icon(Icons.add),
            nextScreen: BoardingView(),
            splashTransition: SplashTransition.scaleTransition,
            backgroundColor: Colors.transparent, // Make it transparent so BG shows
          ),
        ],
      ),
    );
  }

}
