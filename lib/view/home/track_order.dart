import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/outline_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderTrackingPage extends StatelessWidget {
   OrderTrackingPage({super.key});
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
         centerTitle: true,
        title:  Texts.textBold('Seguimiento de pedidos',size: 18),
        elevation: 0,
       scrolledUnderElevation: 0,



      ),
      body: ListView(
        children: [
          Texts.textNormal('Seguimiento del repartidor en el mapa',size: 14),
          Widgets.heightSpaceH2,
          Container(
            height: 300,
            width: double.infinity,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Widgets.heightSpaceH2,

          Column(children: [
            MyIndicator(icon: Assets.orangeTickIcon,title: 'Orden creada',subTitleHeading:"Fecha: " ,subTitle:'12/04/2025',subTitle2: "6391 Elgin St. Celina, Delaware 10299",subTitleHeading2:"Ubicación:" ,),
            Widgets.heightSpaceH1,
            MyIndicator(icon: Assets.orangeTickIcon,title: 'Orden aceptada por el proveedor',subTitleHeading:"Conductor: " ,subTitle:'Mr. Marco Perez',subTitle2: "PTG0123",subTitleHeading2:"Matrícula:" ,),
            Widgets.heightSpaceH1,
            MyIndicator(icon: Assets.orangeRoundIndicatorIcon,title: 'En tránsito',subTitleHeading:"" ,subTitle:'Los artículos pedidos se empaquetan de forma segura',subTitle2: "hhhhhhh",subTitleHeading2:"hhhhhh" ,),
            Widgets.heightSpaceH1,
            MyIndicator(icon: Assets.greyRoundIndicatorIcon,title: 'Entregado',subTitleHeading:"Completado. Tu pedido ha llegado a destino." ,subTitle:'hhhhhh',subTitle2: "hhhhhh",subTitleHeading2:"hhhhh" ,),



          ],),





        ],
      ),
    );
  }
}

class MyIndicator extends StatelessWidget {
  const MyIndicator({
    super.key,
    required this.icon, required this.title,required this.subTitle,required this.subTitleHeading,required this.subTitle2,required this.subTitleHeading2,
  });
  final String icon;
  final String title;
  final String subTitleHeading;
  final String subTitle;
  final String subTitleHeading2;
  final String subTitle2;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,child: Image.asset(icon)),
                Widgets.heightSpaceH05,

                Container(width:2,height: 10,color: ColorConstants.grayBorderColor,),
              ],
            ),
          ),
          Expanded(
            child: ListTile(

              title: Texts.textBold(title,),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start
                ,
                children: [
                  RichText(text: TextSpan(text: subTitleHeading,style:TextStyle(color: ColorConstants.blackColor),children: [TextSpan(text: subTitle,style: TextStyle(color: ColorConstants.greyTextColor))])),
                  RichText(text: TextSpan(text: subTitleHeading2,style:TextStyle(color: ColorConstants.blackColor),children: [TextSpan(text: subTitle2,style: TextStyle(color: ColorConstants.greyTextColor))])),


                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
