import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/order_ticket_widget.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';

class MyPurchases extends StatelessWidget {
  const MyPurchases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.whiteColor,
        title: Texts.textBold("Mis Compras", size: 20),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              OrderTicketWidget(),
              OrderTicketWidget(),
            ],
          ),
        ),
      ),
    );
  }
}


