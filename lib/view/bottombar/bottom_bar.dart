import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/view/bottombar/modules/home/home_view.dart';
import 'package:gasecuador/view/bottombar/modules/inbox/view/inbox_view.dart';
import 'package:gasecuador/view/bottombar/modules/my_purchases/my_purchases.dart';
import 'package:gasecuador/view/bottombar/modules/profile/profile_screen.dart';
import 'package:gasecuador/view/bottombar/modules/track_order/track_order.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
     HomeScreen(),
      OrderTrackingPage(),
    const MyPurchases(),
     TravellerInboxView(),
    const MyProfile(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: ColorConstants.whiteColor,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon1,
              height: 20,
              width: 20,
              color: _currentIndex == 0
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Hogar',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon2,
              height: 20,
              width: 20,
              color: _currentIndex == 1
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Seguimiento',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon3,
              height: 20,
              width: 20,
              color: _currentIndex == 2
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Compras',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon4,
              height: 20,
              width: 20,
              color: _currentIndex == 3
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Mensajes',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.navBarIcon5,
              height: 20,
              width: 20,
              color: _currentIndex == 4
                  ? ColorConstants.primaryColor
                  : Colors.grey,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}


