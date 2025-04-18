

import 'package:flutter/material.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



import '../constants/color_constants.dart';
import 'entry_field.dart';

class CustomAlertDialog extends StatefulWidget {
  final String title;
  double? height;
  final String subtitle;
  final String? doneButtonTitle;
  final String? cancelButtonTitle;
  final Function onDone;
  final Function onCancel;
  CustomAlertDialog(
      {Key? key,
        this.height,
        required this.onDone,
        required this.title,
        required this.subtitle,this.doneButtonTitle,this.cancelButtonTitle,required this.onCancel})
      : super(key: key);

  @override
  State<CustomAlertDialog> createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )),
      child: SizedBox(
        //height: widget.height??330,
        width: 500,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: ColorConstants.primaryColor,
              ),
              child: Texts.textBlock(widget.title,
                  color: Colors.white,
                  size: 20,
                  fontWeight: FontWeight.w900),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Texts.textBlock(widget.subtitle,
                      color: Colors.black87,
                      fontFamily:"RobotoRegular",
                      align: TextAlign.start,size: 15,
                      maxline: 2,
                      fontWeight: FontWeight.w500),
                  Widgets.heightSpaceH3,
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                          onTap: () => widget.onCancel(),
                          child: Texts.textBlock(widget.cancelButtonTitle??"No",
                              // color: ColorConstants.primaryBlackColor,
                              fontWeight: FontWeight.w900)),
                      const SizedBox(width: 20,),
                      InkWell(
                          onTap: () => widget.onDone(),
                          child: Container(

                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                              decoration: BoxDecoration(
                                // color: ColorConstants.secondaryColor,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child:Texts.textBlock(widget.doneButtonTitle??"Yes",
                              color: Colors.white,
                              fontWeight: FontWeight.w900))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomDeleteDialog extends StatelessWidget {
  final String title;
  double? height;
  final String subtitle;
  final String? doneButtonTitle;
  final String? cancelButtonTitle;
  final Function onDone;
  final Function onCancel;
  final TextEditingController passwordController;
  CustomDeleteDialog(
      {Key? key,
        this.height,
        required this.onDone,
        required this.title,required this.passwordController,
        required this.subtitle,this.doneButtonTitle,this.cancelButtonTitle,required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )),
      child: SizedBox(
        //height: widget.height??330,
        width: 500,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0)),
                color: ColorConstants.primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Texts.textBlock(title,
                      color: Colors.white,
                      size: 23,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts.textBlock(subtitle,
                      color: Colors.black87,
                      fontFamily:"RobotoRegular",
                      align: TextAlign.start,
                      maxline: 2,
                      fontWeight: FontWeight.w500),
                  Widgets.heightSpaceH3,
                  EntryField(
                    textInputType:TextInputType.text,
                    controller: passwordController,
                    label: "Enter Password",
                    hint: "password",
                    color: ColorConstants.greyTextColor,
                    trailingTitle: " *",
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      InkWell(
                          onTap: () => onCancel(),
                          child: Texts.textBlock(cancelButtonTitle??"No",
                              // color: ColorConstants.primaryBlackColor,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(width: 20,),
                      InkWell(
                          onTap: () => onDone(),
                          child: Container(

                              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                              decoration: BoxDecoration(
                                  // color: ColorConstants.secondaryColor,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child:Texts.textBlock(doneButtonTitle??"Yes",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
