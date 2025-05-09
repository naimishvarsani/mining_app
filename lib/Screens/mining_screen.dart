// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Helpers/colors.dart';
import '../Helpers/images.dart';

class MiningScreen extends StatelessWidget {
  const MiningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.5,
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.images + "mining2.png"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
