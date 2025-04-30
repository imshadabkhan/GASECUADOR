import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';

import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/entry_field.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteScreen extends StatelessWidget {
    RouteScreen({super.key});
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
    static const CameraPosition _kGooglePlex = CameraPosition(
     target: LatLng(37.42796133580664, -122.085749655962),
     zoom: 14.4746,
   );
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          title:  Texts.textBold('Ingrese a la ruta',size: 22),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Widgets.heightSpaceH05,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: EntryField(
                  fillColor: ColorConstants.searchFieldFillColor,
                  prefixIcon:Assets.searchIcon,
                  hint: "Search Location",
                ),
              ),

              Widgets.heightSpaceH1,
              Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0),child:Texts.textNormal("📍 Seleccionar en el mapa",color: ColorConstants.blackColor,fontWeight: FontWeight.w600,size: 14),
            ),
              Widgets.heightSpaceH2,

                    Expanded(
                      child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                                    ),
                    ),





            ],),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
              child: CustomButton(
                onTap: () {
                  Get.toNamed(AppRoutes.orderResult);
                },
                backgroundColor: ColorConstants.blackColor,
                label: 'Hecho',
              ),
            ),


          ],
        ),
      ),
    );
  }
}
