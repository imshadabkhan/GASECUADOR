import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';

class OrderTicketWidget extends StatelessWidget {
  const OrderTicketWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: Offset(0, 4), // horizontal, vertical shadow
            ),
          ],
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(15),
          ),
      child: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Widgets.heightSpaceH05,
            Texts.textBold("Orden # 2414", size: 16),
            Widgets.heightSpaceH05,
            Widgets.divider(),
            Widgets.heightSpaceH1,
            Texts.textNormal('Fecha', size: 14),
            Widgets.heightSpaceH05,
            Texts.textNormal("12/03/2025",
                color: ColorConstants.blackColor, size: 14),
            Widgets.heightSpaceH1,
            Texts.textNormal('Ubicación', size: 14),
            Widgets.heightSpaceH05,
            Texts.textNormal("6391 Elgin St. Celina, Delaware 10299",
                textAlign: TextAlign.start,
                size: 14,
                color: ColorConstants.blackColor),
            Widgets.heightSpaceH1,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts.textNormal("Conductor", size: 14),
                    Widgets.heightSpaceH05,
                    Texts.textNormal("Luiz Perez",
                        size: 14, color: ColorConstants.blackColor),
                  ],
                ),
                Expanded(child: Widgets.widthSpaceW05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts.textNormal("Compañía", size: 14),
                    Widgets.heightSpaceH05,
                    Texts.textNormal("Distrigas SA",
                        size: 14, color: ColorConstants.blackColor),
                  ],
                ),
                Widgets.widthSpaceW1,
                Column(
                  children: [],
                ),
              ],
            ),
            Widgets.heightSpaceH1,
            Texts.textNormal("Importe de la factura", size: 14),
            Widgets.heightSpaceH05,
            Texts.textNormal("100\$",
                size: 14, color: ColorConstants.blackColor),
          ],
        ),
      ),
    );
  }
}