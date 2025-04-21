import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/core/constants/padding_constants.dart';
import 'package:gasecuador/core/widgets/text_widgets.dart';
import 'package:gasecuador/core/widgets/widgets.dart';
import 'package:get/get.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Texts.textMedium("Mi Perfil",
            size: 20, fontWeight: FontWeight.w600),
      ),
      body: Column(
        children: [
          // Profile Section
          Padding(
            padding: PaddingConstants.screenPadding.copyWith(top: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage(
                      Assets.profileImage), // Replace with actual image path
                ),
                Widgets.widthSpaceW3,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts.textBlock('Luca Moretti',
                        color: Colors.black,size: 15.r),
                        SizedBox(height: 2.h,),
                    Texts.textNormal('lucamoretti@gmail.com',
                        size: 12,
                        color: ColorConstants.greyTextColor,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ],
            ),
          ),

          // Settings Options List
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(()=>"");
                  },
                  child: buildSettingsOption(
                      Assets.editProfileIcon, "Editar perfil",color: ColorConstants.blackColor,
                      suffixicon: Icons.arrow_forward_ios_rounded),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>"TravellerChangePassword()");
                  },
                  child: buildSettingsOption(Assets.truck_icon, "Quiero ser repartidor",color: ColorConstants.blackColor,
                      suffixicon: Icons.arrow_forward_ios_rounded),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(()=>"TravellerNotificationSettingsView()");
                  },
                  child: buildSettingsOption(
                      Assets.termsAndConditionIcon, "Términos y condiciones",color: ColorConstants.blackColor,
                      suffixicon: Icons.arrow_forward_ios_rounded),
                ),
                buildSettingsOption(Assets.termsAndConditionIcon, "Política de privacidad",color: ColorConstants.blackColor,
                    suffixicon: Icons.arrow_forward_ios_rounded),
                buildSettingsOption(
                    Assets.instagramIcon, "Instagram",color: ColorConstants.blackColor,
                    suffixicon: Icons.arrow_forward_ios_rounded),
                buildSettingsOption(Assets.shareIcon, "Comparte esta aplicación",color: ColorConstants.blackColor,
                    isDestructive: true,suffixicon: Icons.arrow_forward_ios_rounded),
                InkWell(
                    onTap: () {
                      Get.offAll(()=>"LoginView()");
                    },

                    child: buildSettingsOption(Assets.logOutIcon, "Cerrar sesión",color: ColorConstants.redColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSettingsOption(icon, String title,
      {bool isDestructive = false, suffixicon, color}) {
    return Column(
      children: [
        Divider(thickness: .7,color: ColorConstants.blackColor,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: 20,
                width: 20,
              ),
              Widgets.widthSpaceW3,
              Texts.textNormal(title,
                  textAlign: TextAlign.start, size: 13, color: color,fontWeight: FontWeight.w500),
              Expanded(
                child: Container(
                  height: 10,
                ),
              ),
              Icon(
                suffixicon,
                size: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
