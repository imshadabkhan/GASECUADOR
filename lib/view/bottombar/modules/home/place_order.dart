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

class PlaceOrderScreen extends StatefulWidget {
  const PlaceOrderScreen({super.key});

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  int quantity = 1;
  String selectedType = 'Sólo recarga';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();

      },
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(
          title:  Texts.textBold('Crear pedido',size: 22),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
        body: Padding(
          padding: PaddingConstants.screenPaddingHalf,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    // Buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _optionButton('Sólo recarga'),
                        Widgets.widthSpaceW1,Widgets.widthSpaceW05,
                        _optionButton('Tanque + Recarga'),
                      ],
                    ),
                    Widgets.heightSpaceH2,
                    Texts.textBold('Cilindro de gas',textAlign: TextAlign.start,size: 18),
                    Widgets.heightSpaceH2,

                    // Image
                    Center(
                      child: Column(
                        children: [
                          Image.asset(Assets.cylinderImage, height: 150.h),
                          Widgets.heightSpaceH1,
                          Texts.textNormal('Capacidad 15kg',textAlign: TextAlign.start,size: 14),
                        ],
                      ),
                    ),

                    Widgets.heightSpaceH2,

                    // Quantity selector
                    Texts.textNormal(
                      'Cantidad',textAlign: TextAlign.start,size: 12
                    ),
                    Widgets.heightSpaceH1,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _quantityButton(


                            Icons.remove, () {
                          setState(() {
                            if (quantity > 1) quantity--;
                          });
                        },
                          BorderRadius.only(topLeft: Radius.circular(6),bottomLeft:Radius.circular(6) ),
                        ),
                        Container(
                          width: 40.h,
                          height: 40.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: ColorConstants.blackColor)
                            ),
                         child:Center(child: Texts.textNormal(quantity.toString(),
                         ),),

                            ),
                        _quantityButton(Icons.add, () {
                          setState(() {
                            quantity++;
                          });
                        },
                          BorderRadius.only(topRight: Radius.circular(6),bottomRight:Radius.circular(6) ),

                        ),
                      ],
                    ),

                    Widgets.heightSpaceH3,

                    // Date and Time
                    Row(
                      children: [
                        Expanded(
                          child: EntryField(
                            label: "Fecha",
                            prefixIcon: Assets.calendarIcon,
                            hint: "21/02/2025",
                          ),
                        ),
                        Widgets.widthSpaceW4,
                        Expanded(
                          child: EntryField(
                            label: "Tiempo",
                            prefixIcon: Assets.clockIcon,
                            hint: "10:00 Am",
                          ),
                        ),
                      ],
                    ),

                    Widgets.heightSpaceH1,

                    // Address
                    EntryField(
                      label: "Dirección",
                      prefixIcon: Assets.locationIcon,
                      hint: '2715 Ash Dr. San Jose, South Dakota 83475',
                    ),

                    Widgets.heightSpaceH2,



                  EntryBigField(


                    label: "Notas adicionales",
                     hint: 'Escriba aquí instrucciones adicionales para completar su pedido',

                  ),
                    Widgets.heightSpaceH1,
                    Widgets.heightSpaceH2,

                    // Button
                  ],
                ),
              ),
              CustomButton(
                onTap: () {
                  Get.toNamed(AppRoutes.routeScreen);
                },
                backgroundColor: ColorConstants.primaryColor,
                label: 'Crear pedido',
              ),
              Widgets.heightSpaceH1,

            ],
          ),
        ),
      ),
    );
  }

  Widget _optionButton(String label) {
    final isSelected = label == selectedType;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedType = label;
          });
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: isSelected ? ColorConstants.purpleColor : Colors.white,
            border: Border.all(color: isSelected ? ColorConstants.purpleColor : ColorConstants.grayBorderColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _quantityButton(IconData icon, VoidCallback onPressed,var borderRadius,) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Container(
       decoration: BoxDecoration(
         color: ColorConstants.blackColor,
         border: Border.all(color: ColorConstants.blackColor),
             borderRadius: borderRadius,

       ),

        child: Icon(icon, size: 16,color: Colors.white,),
      ),
    );
  }

  // Widget _textFieldWithIcon(IconData icon, String hint,
  //     {bool readOnly = false}) {
  //   return TextFormField(
  //     readOnly: readOnly,
  //     decoration: InputDecoration(
  //       prefixIcon: Icon(icon, size: 18,color: ColorConstants.blackColor,),
  //       hintText: hint,
  //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  //       contentPadding:
  //           const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
  //     ),
  //   );
  // }
}
