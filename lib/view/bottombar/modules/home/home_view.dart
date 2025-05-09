import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/info_card.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   final InfoCard infoCardHelper = InfoCard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
            height: 55.h,
            child: Image.asset(
              Assets.appLogo,
            )),
        centerTitle: true,
        backgroundColor: ColorConstants.transparentColor,
        scrolledUnderElevation: 0,
      ),

      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Center(
                    child: Texts.textBold('Tu pedido seguro, siempre cerca',
                        size: 20),
                  ),
                  Widgets.heightSpaceH2,

                  // Banner card
                  Container(
                    height: 130.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage(
                          Assets.roundCylinderImage,
                        ),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          ColorConstants.purpleColor.withAlpha((0.1*255).toInt()), // Adjust opacity as needed
                          BlendMode
                              .srcATop, // You can also try: BlendMode.overlay, multiply, etc.
                        ),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        // Text section
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Texts.textBold(
                                    'Ayudamos a reducir las emisiones de CO2',
                                    color: ColorConstants.whiteColor,
                                    textAlign: TextAlign.start,
                                    size: 16),
                              ),
                              Expanded(
                                child: Texts.textNormal(
                                    "Estamos comprometidos a reducir las emisiones de CO2 para un futuro más limpio y verde.",
                                    size: 14.sp,
                                    color: ColorConstants.whiteColor,
                                    textAlign: TextAlign.start),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                            flex: 1,
                            child: Image.asset(Assets.round_CylinderImage,
                                height: 100.h)),
                      ],
                    ),
                  ),
                  Widgets.heightSpaceH3,

                  // Orders, Cancellations, Points
                  Row(
                    children: [
                      Expanded(
                        child: infoCardHelper.infoCard(Assets.cylinderIcon, 'Mis pedidos', '10',
                            Colors.blue, Color(0xff4491D9).withAlpha((0.1*255).toInt())),
                      ),
                      Widgets.widthSpaceW4,
                      Expanded(
                        child: infoCardHelper.infoCard(Assets.redCardIcon, 'Mis Cancelaciones', '2',
                            Colors.red, Color(0xffD94444).withAlpha((0.1*255).toInt())),
                      ),
                    ],
                  ),
                  Widgets.heightSpaceH3,
                  infoCardHelper.infoCard(Assets.starIcon, 'Mis puntos acumulados', '10',
                      Colors.amber, Color(0xffDEBF12).withAlpha((0.1*255).toInt())),

                  Widgets.heightSpaceH3,

                  // Create Order Button
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                Get.toNamed( AppRoutes.placeOrderScreen);
              },
              backgroundColor: ColorConstants.primaryColor,
              label: 'Crear pedido',
            ),
          ],
        ),
      ),
    );
  }


}
