import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/outline_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingPage extends StatelessWidget {
   OrderTrackingPage({super.key});
   bool delieveryCompleted=false;
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        leading: BackButton(),
         centerTitle: true,
        title:  Texts.textBold('Seguimiento de pedidos',size: 18),
        elevation: 0,
       scrolledUnderElevation: 0,backgroundColor: ColorConstants.whiteColor,



      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding:EdgeInsets.symmetric(horizontal: 20,),child:Texts.textNormal('Seguimiento del repartidor en el mapa',size: 14), ),

              Widgets.heightSpaceH2,
             delieveryCompleted==false? SizedBox(
                height: 200.h,
                width: double.infinity,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ):Padding(
                padding: PaddingConstants.screenPaddingHalf,
                child: Container(
                  width: double.infinity,
                  height:200.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: ColorConstants.grayBorderColor,width: 2)),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(Assets.appLogo,height: 80.h,),
                      Widgets.heightSpaceH1,
                      Texts.textBold("Felicidades!",size: 18),
                      Widgets.heightSpaceH05,
                      Texts.textNormal("Tu pedido ha llegado",size: 14),
                      Widgets.heightSpaceH1,
                      RichText(text: TextSpan(text: "cantidad a pagar : ",style: TextStyle(fontWeight: FontWeight.bold,color: ColorConstants.blackColor,fontSize: 14),children: [
                        TextSpan(text: "3.50 USD",style: TextStyle(color: ColorConstants.greyTextColor,fontSize: 14,fontWeight: FontWeight.normal)),
                      ]))


                  ],),
                ),),
              )


            ],
          ),
          Widgets.heightSpaceH05,
          Expanded(
            child: Padding(
              padding: PaddingConstants.screenPaddingHalf,
              child: ListView(children: [
                Widgets.heightSpaceH2,
                MyIndicator(icon: Assets.orangeTickIcon,title: 'Orden creada',subTitleHeading:"Fecha: " ,subTitle:'12/04/2025',subTitle2: "6391 Elgin St. Celina, Delaware 10299",subTitleHeading2:"Ubicación:" ,),
                Widgets.heightSpaceH05,
                MyIndicator(icon: Assets.orangeTickIcon,title: 'Orden aceptada por el proveedor',subTitleHeading:"Conductor: " ,subTitle:'Mr. Marco Perez',subTitle2: "PTG0123",subTitleHeading2:"Matrícula:" ,),
                Widgets.heightSpaceH05,
                MyIndicator(icon: Assets.orangeRoundIndicatorIcon,title: 'En tránsito',subTitleHeading:"" ,subTitle:'Los artículos pedidos se empaquetan de forma segura',subTitle2: "",subTitleHeading2:"" ,),
                Widgets.heightSpaceH05,
                MyIndicator(icon: Assets.greyRoundIndicatorIcon,title: 'Entregado',subTitleHeading:"Completado. Tu pedido ha llegado a destino." ,subTitle:'',subTitle2: "",subTitleHeading2:"" ,)


              ],),
            ),
          ),
          Widgets.heightSpaceH2,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(child: CustomButton(label: 'Llamar al conductor',backgroundColor: ColorConstants.primaryColor,fontSize: 12,onTap: (){
                  Get.toNamed(AppRoutes.ratingScreen);
                },)),
                Widgets.widthSpaceW2,
                Expanded(child: MyOutlineButton(height:30.h,text: 'Cancelar pedido',borderColor: ColorConstants.primaryColor,textColor: ColorConstants.primaryColor ,)),
              ],
            ),
          )
          ,Widgets.heightSpaceH2,
        ],
      ),
    );
  }
}

class MyIndicator extends StatelessWidget {
  const MyIndicator({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitleHeading,
    required this.subTitle,
    required this.subTitleHeading2,
    required this.subTitle2,
  });

  final String icon;
  final String title;
  final String subTitleHeading;
  final String subTitle;
  final String subTitleHeading2;
  final String subTitle2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            children: [
              SizedBox(height: 15, child: Image.asset(icon)),
              Widgets.heightSpaceH05,
              // Optional: make height dynamic based on text content
              Container(
                width: 2,
               height: 55.h,
               // Adjust this manually or calculate dynamically
                color: ColorConstants.grayBorderColor,
              ),
            ],
          ),
        ),
        SizedBox(width: 12.w), // spacing between icon and text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Texts.textBold(title, size: 18, textAlign: TextAlign.start),
              Widgets.heightSpaceH05,
              if (subTitleHeading.isNotEmpty || subTitle.isNotEmpty)
                RichText(
                  text: TextSpan(
                    text: subTitleHeading,
                    style: TextStyle(color: ColorConstants.blackColor),
                    children: [
                      TextSpan(
                        text: subTitle,
                        style: TextStyle(color: ColorConstants.greyTextColor),
                      ),
                    ],
                  ),
                ),
              if (subTitleHeading2.isNotEmpty || subTitle2.isNotEmpty)
                RichText(
                  text: TextSpan(
                    text: subTitleHeading2,
                    style: TextStyle(color: ColorConstants.blackColor),
                    children: [
                      TextSpan(
                        text: subTitle2,
                        style: TextStyle(color: ColorConstants.greyTextColor),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}

