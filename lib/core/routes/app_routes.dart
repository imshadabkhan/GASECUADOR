import 'package:gasecuador/view/authentication/login.dart';
import 'package:gasecuador/view/bottombar/bottom_bar.dart';
import 'package:gasecuador/view/home/cancel_order.dart';
import 'package:gasecuador/view/home/home_view.dart';
import 'package:gasecuador/view/home/order_result.dart';
import 'package:gasecuador/view/home/place_order.dart';
import 'package:gasecuador/view/home/rating_screen.dart';
import 'package:gasecuador/view/home/route_screen.dart';
import 'package:gasecuador/view/home/track_order.dart';
import 'package:gasecuador/view/starting/onboarding_screen.dart';
import 'package:get/get.dart';

import '../../view/authentication/email_verification_view.dart';
import '../../view/starting/splash_view.dart';

class AppRoutes {
  static const splash = '/';
  static const boarding = '/boarding';
   static const cancelOrder = '/cancelOrder';
  static const userLogin = '/user-view';
  // static const signUp = "/signup";
  static const emailVerification = '/emailVerification';
  static const homeView = '/homeView';
  static const bottomBarView = '/bottomBarView';
  static const orderResult = '/orderResult';
  static const ratingScreen = '/ratingScreen';
  static const routeScreen = '/routeScreen';
  static const orderTrackScreen = '/orderTrackScreen';
  static const placeOrderScreen = '/placeOrderScreen';
  static final routes = [
    GetPage(name: splash, page: () => SplashView()),
    GetPage(name: boarding, page: () => BoardingView()),
    GetPage(name: bottomBarView, page: () => MainNavigation()),
    GetPage(name: userLogin, page: () => LoginView()),
    GetPage(name: homeView, page: () => HomeScreen()),
    GetPage(name: emailVerification, page: () => EmailVerificationView()),
    GetPage(name: cancelOrder, page: () => CancelOrderScreen()),
    GetPage(name: orderResult, page: () => OrderResultsPage()),
    GetPage(name: ratingScreen, page: () => RatingScreen()),
    GetPage(name: routeScreen, page: () => RouteScreen()),
    GetPage(name: orderTrackScreen, page: () => OrderTrackingPage()),
    GetPage(name: placeOrderScreen, page: () => PlaceOrderScreen()),
  ];
}
