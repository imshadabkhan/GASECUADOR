import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:gasecuador/view/bottombar/bottom_bar.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/widgets/text_widgets.dart';

class EmailVerificationView extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
              height: 55.h,
              child: Image.asset(
                Assets.appLogo,
              )),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: PaddingConstants.screenPaddingHalf,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Widgets.heightSpaceH2,
                Texts.textBold("Verificación OTP",
                    color: ColorConstants.blackColor,
                    size: 20,
                    textAlign: TextAlign.center),
                Widgets.heightSpaceH1,
                Texts.textNormal(
                  "Ingresa el código que recibiste en tu número de teléfono +593 22415356",
                  size: 13,
                  textAlign: TextAlign.center,
                ),
                Widgets.heightSpaceH3,
                // Texts.textBlock(authenticationController.email ?? "",
                //     color: Colors.black,
                //     size: 15,
                //     fontWeight: FontWeight.w700,
                //     fontFamily: "InstrumentSansRegular"),
                Widgets.heightSpaceH5,
                PinCodeTextField(
                  controller: otpController,
                  appContext: context,
                  length: 6,
                  autoDisposeControllers: true,
                  animationType: AnimationType.fade,
                  textStyle: const TextStyle(color: Colors.black),
                  pinTheme: PinTheme(
                      fieldWidth: .12.sw,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      borderWidth: .5,
                      selectedBorderWidth: .8,
                      activeBorderWidth: .5,
                      activeFillColor: ColorConstants.grayBorderColor,
                      inactiveFillColor: ColorConstants.grayBorderColor,
                      inactiveBorderWidth: .5,
                      selectedColor: ColorConstants.blackColor,
                      activeColor: Colors.black12.withOpacity(.09),
                      selectedFillColor: ColorConstants.whiteColor,
                      inactiveColor: Colors.black12.withOpacity(.09)),
                  cursorColor: ColorConstants.blackColor,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
                Widgets.heightSpaceH1,
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "No recibiste el código? ",
                          style:
                              TextStyle(color: ColorConstants.greyTextColor)),
                      TextSpan(
                          text: "Reenvíalo ",
                          style: TextStyle(color: ColorConstants.blackColor)),
                      TextSpan(
                          text: "en 30 segundos.",
                          style:
                              TextStyle(color: ColorConstants.greyTextColor)),
                    ])),
                Widgets.heightSpaceH1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Texts.textNormal("Número equivocado? ", size: 14),
                    Texts.textNormal("Editar",
                        size: 14,
                        decoration: TextDecoration.underline,
                        color: ColorConstants.blackColor),
                  ],
                ),
                Spacer(),

                CustomButton(
                  label: "Continuar",
                  color: otpController.text.length != 6
                      ? ColorConstants.blackColor
                      : ColorConstants.whiteColor,
                  textColor: ColorConstants.blackColor,
                  backgroundColor: otpController.text.length != 6
                      ? ColorConstants.greyTextColor
                      : ColorConstants.primaryColor,
                  onTap: () {
                    Get.toNamed(AppRoutes.bottomBarView);
                    // otpController.text.length != 6? Widgets.showSnackBar(
                    //     "OTP Form", "Please enter 6 digits OTP"):
                    //
                    //
                    // authenticationController.resendForgotOtp(
                    //     authenticationController.email ?? "");
                  },
                ),
                Widgets.heightSpaceH1,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
