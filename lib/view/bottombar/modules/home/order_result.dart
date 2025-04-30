import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/build_driver_card.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';

class OrderResultsPage extends StatelessWidget {
   OrderResultsPage({super.key});
  final BuildDriverCard driverCard=BuildDriverCard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: ColorConstants.whiteColor,
        title: Texts.textBold('Resultados del pedido', size: 18),
      ),
      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  driverCard.buildDriverCard(
                    name: 'Luis Perez',
                    company: 'Distingas SA',
                    license: 'PCA0123',
                    distance: '6.4 km',
                    time: '30 - 45 min',
                    offer: '3.25 USD',
                    fare: '0.25 USD/km',
                  ),
                  Widgets.heightSpaceH2,
                  driverCard.buildDriverCard(
                    name: 'Luis Shadab khan',
                    company: 'Distingas SA',
                    license: 'PCA0123',
                    distance: '6.4 km',
                    time: '30 - 45 min',
                    offer: '3.25 USD',
                    fare: '0.25 USD/km',
                  ),
                  Widgets.heightSpaceH2,
                  Texts.textNormal(
                      'Haz clic en ACEPTAR para elegir a tu repartidor preferido',
                      textAlign: TextAlign.center,
                      color: ColorConstants.greyTextColor,
                      size: 14),
                  Widgets.heightSpaceH1,
                  Widgets.heightSpaceH1,
                ],
              ),
            ),
            CustomButton(
              onTap: () {
                Get.to("");
              },
              backgroundColor: ColorConstants.primaryColor,
              label: 'Cancelar solicitud',
            ),
          ],
        ),
      ),
    );
  }




}
