import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(

        body: AnimatedSplashScreen(
            duration: 4000,
            centered: true,
            splashIconSize: 200,
            splash: Image.asset(
              Assets.appLogo,
              width: .70.sw,
            ),
            nextScreen: BoardingView(),
            splashTransition: SplashTransition.scaleTransition,


        ));
  }
}
