import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:gasecuador/view/home/place_order.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                        child: _infoCard(Assets.cylinderIcon, 'Mis pedidos', '10',
                            Colors.blue, Color(0xff4491D9).withAlpha((0.1*255).toInt())),
                      ),
                      Widgets.widthSpaceW4,
                      Expanded(
                        child: _infoCard(Assets.redCardIcon, 'Mis Cancelaciones', '2',
                            Colors.red, Color(0xffD94444).withAlpha((0.1*255).toInt())),
                      ),
                    ],
                  ),
                  Widgets.heightSpaceH3,
                  _infoCard(Assets.starIcon, 'Mis puntos acumulados', '10',
                      Colors.amber, Color(0xffDEBF12).withAlpha((0.1*255).toInt())),

                  Widgets.heightSpaceH3,

                  // Create Order Button
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                Get.to(() => PlaceOrderScreen());
              },
              backgroundColor: ColorConstants.primaryColor,
              label: 'Crear pedido',
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(
      String icon, String title, String count, Color color, Color chipColor) {
    return Container(
      height: 150.h,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0,top: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: chipColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  icon,
                  height: 20,
                ),
              ),
            ),
            Widgets.heightSpaceH2,
            Texts.textNormal(title, textAlign: TextAlign.start, size: 14),
            Widgets.heightSpaceH05,
            Texts.textBold(
              count,
            ),
          ],
        ),
      ),
    );
  }
}
