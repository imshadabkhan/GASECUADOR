import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/routes/app_routes.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';



class CancelOrderScreen extends StatefulWidget {
  @override
  _CancelOrderScreenState createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  List<String> reasons = [
    "Conductor tarda mucho",
    "Acepté la oferta por error",
    "Deseo cambiar la dirección de destino",
    "Ya no lo necesito"
  ];

  List<bool> selected = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        leading: BackButton(),
        title: Texts.textBold('Cancelar Pedido',size: 18),

        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.grayBorderColor),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                Image.asset(Assets.appLogo,height: 80.h,),
                  Widgets.heightSpaceH1,
                  Texts.textBold(
                    "Porque cancelas el pedido",
                   size: 20
                  ),
                  Widgets.heightSpaceH1,
                  ...List.generate(reasons.length, (index) {
                    return CheckboxListTile(
                      
                      side:  BorderSide(color:ColorConstants.greyTextColor),
                      dense: true, // Slightly reduces height
                      activeColor: ColorConstants.primaryColor,
                      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                      contentPadding: EdgeInsets.zero,
                      value: selected[index],
                      title: Transform.translate(
                        offset: Offset(-9, 0), // move text closer to the checkbox
                        child: Texts.textNormal(reasons[index],textAlign: TextAlign.start,size: 14,color: ColorConstants.blackColor),
                      ),
                      onChanged: (value) {
                        setState(() {
                          selected[index] = value!;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                    );
                  }),
                ],
              ),
            ),
            Widgets.heightSpaceH1,
            Texts.textNormal(
              "Gracias por tu colaboración > Esto nos ayuda a mejorar el servicio.",
              size: 15,
              textAlign: TextAlign.center,
             color: ColorConstants.greyTextColor
            ),
            Spacer(),
          CustomButton(
            onTap: (){Get.toNamed(AppRoutes.orderTrackScreen);},
            label: "Cancelar Pedido",
            backgroundColor: ColorConstants.primaryColor,

          ),
          ],
        ),
      ),
    );
  }
}
