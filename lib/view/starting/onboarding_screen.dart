import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: PaddingConstants.screenPaddingHalf,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Widgets.heightSpaceH2,
              Texts.textBold("Entrega de gas a domicilio..?", size: 20),
              Widgets.heightSpaceH05,
              Texts.textNormal("Rápido, seguro y eficiente", size: 14),
              Widgets.heightSpaceH1,
              Image.asset(
                Assets.onboardingImage,
                height: 300.h,
              ),
              Widgets.heightSpaceH1,
              Spacer(
                flex: 2,
              ),
              Texts.textBold("Iniciar sesión", size: 18),
              Widgets.heightSpaceH05,
              Texts.textNormal("Inicia sesión con tu número de móvil",
                  size: 14),
              Widgets.heightSpaceH2,
              CustomButton(
                onTap: (){
                  Get.toNamed(AppRoutes.userLogin);
                },
                label: 'Iniciar sesión con el móvil',
                color: ColorConstants.whiteColor,
                icon: Image.asset(
                  Assets.whitePhoneIcon,
                  height: 20.h,
                  width: 20.w,
                ),
                backgroundColor: ColorConstants.primaryColor,
              ),
              Widgets.heightSpaceH1,
              Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 14,
                    width: 14,
                    child: Checkbox(
                      side: BorderSide(color: ColorConstants.grayBorderColor),
                      value: false,
                      onChanged: (newValue) {},
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                  Widgets.widthSpaceW2,
                  Texts.textNormal('I agree to the ', size: 10),
                  Texts.textNormal('Terms & Privacy Policy ',
                      color: ColorConstants.blackColor,
                      size: 10,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w600),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
