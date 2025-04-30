import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:get/get.dart';


class InboxController extends GetxController{
  final List<Map<String, dynamic>> messages = [
    {
      "name": "Felix Murphy",
      "message": "Lorem ipsum dolor sit amet consectetur. Neque...",
      "time": "2:00 PM",
      "image": Assets.profileImage,
      "unreadCount": 3,
    },
    {
      "name": "Luca Moretti",
      "message": "Lorem ipsum dolor sit amet consectetur. Neque...",
      "time": "2:00 PM",
      "image": Assets.profileImage1,
      "unreadCount": 1,
    },
    {
      "name": "Luca Moretti",
      "message": "Lorem ipsum dolor sit amet consectetur. Neque...",
      "time": "2:00 PM",
      "image": Assets.profileImage1,
      "unreadCount": 2,
    },


  ];



}