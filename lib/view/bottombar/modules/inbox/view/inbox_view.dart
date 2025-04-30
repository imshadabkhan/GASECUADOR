import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';
import '../controller/inbox_controller.dart';

class TravellerInboxView extends StatelessWidget {
   TravellerInboxView({super.key});

 final InboxController inboxController =  Get.put(InboxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      appBar: AppBar(backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Texts.textMedium("Inbox",
            size: 20, fontWeight: FontWeight.w600),
      ),
      body: SafeArea(
        child: Padding(
          padding: PaddingConstants.screenPadding.copyWith(top: 5),
          child: ListView.separated(
            itemCount: 3,
            itemBuilder: (context, index) {
              final message = inboxController.messages[index];
              return Widgets.chatCard(
                name: message["name"],
                message: message["message"],
                time: message["time"],
                image: message["image"],
                unreadCount: message["unreadCount"],
              );
            }, separatorBuilder: (BuildContext context, int index) { return Divider(color: ColorConstants.greyTextColor,thickness: .5,); },
          ),
        ),
      ),
    );
  }
}
