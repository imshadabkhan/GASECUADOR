import 'package:gasecuador/view/authentication/login.dart';
import 'package:gasecuador/view/home/home_view.dart';
import 'package:gasecuador/view/starting/onboarding_screen.dart';
import 'package:get/get.dart';

import '../../view/authentication/email_verification_view.dart';
import '../../view/starting/splash_view.dart';

class AppRoutes {
  static const splash = '/';
  static const boarding = '/boarding';
  // static const userForgotPassword = '/user-forgot-password';
   static const userLogin = '/user-view';
  // static const signUp = "/signup";
   static const emailVerification = '/emailVerification';
  static const homeView = '/homeView';
  // static const navigationBar = "/navigation_bar_view";
  // static const editProfile = "/editProfile";
  // static const resetPassword = "/resetPassword";
  // static const notificationScreen = "/notificationScreen";
  // static const verificationView = "/verificationView";
  // static const bookingDetails = "/bookingDetails";
  // static const chatScreen = "/ChatScreen";
  // static const detailView = "/detailView";
  // static const changePassword = "/changePassword";
  // static const createAcountVerificatiom = "/createAcountVerificatiom";
  // static const notificationSetting = "/notificationSetting";
  static final routes = [
    GetPage(name: splash, page: () => SplashView()),
    GetPage(name: boarding, page: () => BoardingView()),
    // GetPage(name: userForgotPassword, page: () => ForgotPasswordView()),
     GetPage(name: userLogin, page: () => LoginView()),
     GetPage(name: homeView, page: () => HomeScreen()),
     GetPage(name: emailVerification, page: () => EmailVerificationView()),
    // GetPage(name: navigationBar, page: () => HostNavScreen()),
    // GetPage(name: resetPassword, page: () => ResetPasswordView()),
    // GetPage(name: detailView, page: () => RequestDetailView()),
    // GetPage(name: changePassword, page: () => ChangePassword()),
    // GetPage(
    //     name: notificationSetting, page: () => NotificationSettingsScreen()),
    // GetPage(name: bookingDetails, page: () => BookingDetailsView()),
  ];
}
