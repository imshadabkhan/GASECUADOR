import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/entry_field.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
              height: 55.h,
              child: Image.asset(
                Assets.appLogo,
              )),
          centerTitle: true,
        ),
        body: Padding(
          padding: PaddingConstants.screenPaddingHalf,
          child: Column(
            children: [
              Texts.textBold("Bienvenido de nuevo!", size: 20),
              Widgets.heightSpaceH05,
              Texts.textNormal(
                  "Inicia sesión con tu número de móvil para empezar. Te enviaremos un código de verificación rápido.",
                  size: 14),
              Widgets.heightSpaceH3,
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: EntryField(
                        label: "País",
                        suffixIcon: Icons.keyboard_arrow_down_sharp,
                        hint: "EC+593",
                      )),
                  Widgets.widthSpaceW1,
                  Expanded(
                      flex: 2,
                      child: EntryField(
                        label: "Número de teléfono",
                        hint: "2412465767",
                      ))
                ],
              ),
              Spacer(),
              CustomButton(
                onTap: (){
Get.toNamed(AppRoutes.emailVerification);
                },
                label: "Continuar",
                backgroundColor: ColorConstants.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
