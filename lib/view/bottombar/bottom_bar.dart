import 'package:flutter/material.dart';
import 'package:gasecuador/core/constants/assets_constants.dart';
import 'package:gasecuador/core/constants/color_constants.dart';
import 'package:gasecuador/view/home/compras_screen.dart';
import 'package:gasecuador/view/home/home_view.dart';
import 'package:gasecuador/view/home/order_result.dart';
import 'package:gasecuador/view/home/place_order.dart';
import 'package:gasecuador/view/home/profile_screen.dart';
import 'package:gasecuador/view/home/route_screen.dart';


class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Placeholder(),
    const MyPurchases(),
    const Placeholder(),
    const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: ColorConstants.primaryColor),
        unselectedLabelStyle: TextStyle(color:ColorConstants.greyTextColor ),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: ColorConstants.whiteColor,
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
              label: 'Seguimiento'),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.navBarIcon3,
                height: 20,
                width: 20,
                color: _currentIndex == 2
                    ? ColorConstants.primaryColor
                    : Colors.grey,
              ),
              label: 'Compras'),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.navBarIcon4,
                height: 20,
                width: 20,
                color: _currentIndex == 3
                    ? ColorConstants.primaryColor
                    : Colors.grey,
              ),
              label: 'Mensajes'),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.navBarIcon5,
                height: 20,
                width: 20,
                color: _currentIndex == 4
                  ? ColorConstants.primaryColor
                  : Colors.grey,
              ),
              label: 'Perfil'),
        ],
      ),
    );
  }
}

