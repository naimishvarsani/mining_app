// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors_in_immutables

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:mining_app/Helpers/images.dart";
import "package:mining_app/Screens/home_screen.dart";
import "package:mining_app/Screens/mining_screen.dart";
import "package:mining_app/Screens/setting_screen.dart";
import "package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart";

import "../Helpers/colors.dart";

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: HomeScreen(),
          item: ItemConfig(
            icon: Image.asset(
              AppImages.icons + "1.png",
              width: 20,
              color: AppColors.skyColor,
            ),
            inactiveIcon: Image.asset(
              AppImages.icons + "1.png",
              width: 20,
            ),
          ),
        ),
        PersistentTabConfig(
          screen: MiningScreen(),
          item: ItemConfig(
            activeForegroundColor: AppColors.skyColor,
            icon: Image.asset(
              AppImages.icons + "2.png",
              width: 25,
              color: AppColors.whiteColor,
            ),
            inactiveIcon: Image.asset(
              AppImages.icons + "2.png",
              width: 25,
            ),
          ),
        ),
        PersistentTabConfig(
          screen: SettingScreen(),
          item: ItemConfig(
            icon: Image.asset(
              AppImages.icons + "3.png",
              width: 25,
              color: AppColors.skyColor,
            ),
            inactiveIcon: Image.asset(
              AppImages.icons + "3.png",
              width: 25,
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return PersistentTabView(
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => Style14BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(color: Colors.black),
      ),
      navBarOverlap: NavBarOverlap.full(),
    );
  }
}
