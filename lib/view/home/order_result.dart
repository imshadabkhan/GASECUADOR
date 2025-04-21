import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';


class OrderResultsPage extends StatelessWidget {
  const OrderResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,elevation: 0,
backgroundColor: ColorConstants.whiteColor,
        title:  Texts.textBold('Resultados del pedido',size: 18),

      ),

      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildDriverCard(
                    name: 'Luis Perez',
                    company: 'Distingas SA',
                    license: 'PCA0123',
                    distance: '6.4 km',
                    time: '30 - 45 min',
                    offer: '3.25 USD',
                    fare: '0.25 USD/km',
                  ),

                Widgets.heightSpaceH2,
                  _buildDriverCard(
                    name: 'Luis Perez',
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
                    textAlign: TextAlign.center,color: ColorConstants.greyTextColor,size: 14

                  ),
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

  Widget _buildDriverCard({
    required String name,
    required String company,
    required String license,
    required String distance,
    required String time,
    required String offer,
    required String fare,

  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border:Border.all(color: ColorConstants.grayBorderColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 4), // horizontal, vertical shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 80,width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image:AssetImage(Assets.profileImage,),fit: BoxFit.cover ),
                ),

              ),
             Widgets.widthSpaceW2,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Texts.textBold(name,size: 14
                          ),
                     Widgets.widthSpaceW1,
                     Image.asset(Assets.reviewStar,height: 14),
                      Widgets.widthSpaceW1,
                       Texts.textNormal("(4.0)",size: 14,fontWeight: FontWeight.w500


                       ),
                    ],
                  ),
                  Widgets.heightSpaceH05,
                  Row(children: [
                    Texts.textNormal('Compañía: ',size: 14,fontWeight: FontWeight.w600,color: ColorConstants.blackColor),
                    Texts.textNormal(company,size: 14,fontWeight: FontWeight.w500),

                  ],),

                  Widgets.heightSpaceH1,
                  Row(children: [
                    Texts.textNormal('Matrícula: ',size:14,fontWeight: FontWeight.w600,color:ColorConstants.blackColor ),
                    Texts.textNormal(license ,size: 14,fontWeight: FontWeight.w500),

                  ],),


                ],
              )
            ],
          ),
          Widgets.heightSpaceH1,
          Widgets.divider(),
       Widgets.heightSpaceH1,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoTile(title: 'Distancia', value: distance),
Widgets.heightSpaceH2,
                  _buildInfoTile(title: 'Tarifa de plataforma', value: offer),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoTile(title: 'Tiempo', value: time),
                  Widgets.heightSpaceH2,
                  _buildInfoTile(title: 'total a pagar', value: fare),
                ],
              ),
              _buildInfoTile(title: 'Oferta', value: offer),
            ],
          ),
         Widgets.heightSpaceH1,
          Widgets.heightSpaceH2,


          CustomButton(
            onTap: () {
              Get.toNamed(AppRoutes.cancelOrder);
            },
            backgroundColor: ColorConstants.greenColor,
            label: 'Aceptar',
          ),

        ],
      ),
    );
  }

  Widget _buildInfoTile({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Texts.textNormal(title,size: 12),
        Widgets.heightSpaceH05,
        Texts.textNormal(value, size: 14,fontWeight: FontWeight.w500,color: ColorConstants.blackColor),
      ],
    );
  }
}
