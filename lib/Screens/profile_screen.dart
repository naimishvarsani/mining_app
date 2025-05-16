// ignore_for_file: deprecated_member_use

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mining_app/Screens/convert_coin.dart';

import '../Helpers/colors.dart';
import '../Helpers/common_widgets.dart';
import '../Helpers/images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.bgColor,
          surfaceTintColor: AppColors.bgColor,
          centerTitle: true,
          title: CommonWidget()
              .alatsiText(text: "Profile", textColor: AppColors.whiteColor),
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              border: Border.all(color: AppColors.whiteColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Icons.arrow_back, color: AppColors.whiteColor),
            ),
          )),
      body: ColorfulSafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //==================================================================
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.bgColor),
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: AppColors.skyColor),
                      child: Icon(
                        Icons.person,
                        color: AppColors.whiteColor,
                        size: 40,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: AppColors.bgColor, width: 5),
                            color: AppColors.whiteColor),
                        child: Icon(
                          Icons.edit,
                          color: AppColors.bgColor,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CommonWidget().alatsiText(
              text: "Kriyanshi Singala",
              textColor: AppColors.whiteColor,
              textWeight: FontWeight.w400,
              textSize: 22.0,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.skyColor.withOpacity(.2)),
              child: CommonWidget().alatsiText(
                text: "#TH011462656565",
                textAlign: TextAlign.center,
                textColor: AppColors.skyColor,
                spacing: 3.0,
                textWeight: FontWeight.w400,
                textSize: 15.0,
              ),
            ),
            //==================================================================
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 150,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: AppColors.skyColor.withOpacity(0.3),
                      border: Border.all(color: AppColors.skyColor, width: 2),
                      image: DecorationImage(
                          image:
                              AssetImage(AppImages.images + "coin_layer.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppImages.images + "coin.png",
                        width: Get.width * 0.2,
                      ),
                      CommonWidget().alatsiText(
                          text: "0 USDT",
                          textColor: AppColors.whiteColor,
                          textSize: 17.0,
                          textWeight: FontWeight.w500),
                      CommonWidget().alatsiText(
                          text: "Current Balance",
                          textColor: AppColors.whiteColor.withOpacity(.3),
                          textSize: 16.0,
                          textWeight: FontWeight.w500),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: AppColors.greenColor.withOpacity(0.3),
                      border: Border.all(color: AppColors.greenColor, width: 2),
                      image: DecorationImage(
                          image:
                              AssetImage(AppImages.images + "speed_layer.png"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppImages.images + "speed.png",
                        width: Get.width * 0.2,
                      ),
                      CommonWidget().alatsiText(
                          text: "0",
                          textColor: AppColors.whiteColor,
                          textSize: 15.0,
                          textWeight: FontWeight.w400),
                      CommonWidget().alatsiText(
                          text: "Super Coin",
                          textColor: AppColors.whiteColor.withOpacity(.3),
                          textSize: 16.0,
                          textWeight: FontWeight.w500),
                    ],
                  ),
                ),
              ],
            ),
            //==================================================================
            SizedBox(height: 15),
            Container(
              width: Get.width * 0.9,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.bgColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.skyColor)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(ConvertCoin());
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        AppImages.icons + "convert.png"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonWidget().alatsiText(
                                  text: "Convert Super Coins",
                                  textColor: AppColors.whiteColor,
                                  textSize: 16.0,
                                  textWeight: FontWeight.w500),
                              CommonWidget().alatsiText(
                                  text:
                                      "Convert your super coins into the USDT",
                                  textColor:
                                      AppColors.whiteColor.withOpacity(.3),
                                  textSize: 12.0,
                                  textWeight: FontWeight.w500),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage(AppImages.icons + "refer.png"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonWidget().alatsiText(
                                text: "Refer Friends",
                                textColor: AppColors.whiteColor,
                                textSize: 16.0,
                                textWeight: FontWeight.w500),
                            CommonWidget().alatsiText(
                                text: "Invite your friend and get rewards!",
                                textColor: AppColors.whiteColor.withOpacity(.3),
                                textSize: 12.0,
                                textWeight: FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
