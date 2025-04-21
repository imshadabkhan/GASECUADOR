import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/custom_button.dart';
import 'package:gasecuador/core/widgets/entry_field.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();

                },
      child: Scaffold(
        backgroundColor: ColorConstants.whiteColor,
        appBar: AppBar(leading: BackButton(),backgroundColor: ColorConstants.whiteColor,),
      body: Padding(
        padding: PaddingConstants.screenPaddingHalf,
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Texts.textBold("Califica El Servicio Del Repartidor",size: 20,textAlign: TextAlign.start),
          Widgets.heightSpaceH1,
          RatingBar.builder(
          initialRating: 1,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,

          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
            Widgets.heightSpaceH1,
            EntryBigField(


              label: 'Escribe una reseña',


            ),
            Widgets.heightSpaceH1,
            CustomButton(label:"Enviar reseña",backgroundColor: ColorConstants.primaryColor,
              )

        ],),
      ),


      ),
    );
    
  }
}
