
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../constants/color_constants.dart';
import 'half_circle_paint.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration:BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(.03),
            spreadRadius: 3,
            blurRadius: 3,
            // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          4,
          (index) => buildNavItem(
            context,
            index,
            [
              Icons.home_filled,
              Icons.groups,
              Icons.calendar_month,
              CupertinoIcons.profile_circled
            ][index],
          ),
        ),
      ),
    );
  }

  buildNavItem(BuildContext context, int index, IconData iconData) {
    bool isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
          iconData,
          size: 23,
          color: ColorConstants.primaryColor,
        ),
          MyArc(diameter: 20),
        ],
      ),
    );
  }
}
