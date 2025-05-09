// ignore_for_file: deprecated_member_use, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mining_app/Helpers/colors.dart';
import 'package:mining_app/Helpers/common_widgets.dart';
import 'package:mining_app/Helpers/images.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
            CommonWidget().alatsiText(
                text: "Upgrade",
                textColor: AppColors.whiteColor,
                textSize: 18.0,
                textWeight: FontWeight.w500),
            SizedBox(height: 10),
            SizedBox(
              width: Get.width * .7,
              child: CommonWidget().alatsiText(
                  text:
                      "Upgrade mining Rig, Time, and Speed to generate more coins ",
                  textAlign: TextAlign.center,
                  textColor: AppColors.whiteColor.withOpacity(0.3),
                  textSize: 15.0,
                  textWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.skyColor)),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.icons + "5.png",
                        width: 25,
                      ),
                      SizedBox(width: 10),
                      CommonWidget().alatsiText(
                          text: "0.9",
                          textAlign: TextAlign.center,
                          textColor: AppColors.whiteColor,
                          textSize: 18.0,
                          textWeight: FontWeight.w700),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.skyColor)),
                  child: Row(
                    children: [
                      Image.asset(
                        AppImages.icons + "4.png",
                        width: 25,
                      ),
                      SizedBox(width: 10),
                      CommonWidget().alatsiText(
                          text: "136",
                          textAlign: TextAlign.center,
                          textColor: AppColors.whiteColor,
                          textSize: 18.0,
                          textWeight: FontWeight.w700),
                    ],
                  ),
                ),
              ],
            ),
            //====================================================================
            SizedBox(height: 15),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.skyColor, width: 2),
                  color: AppColors.whiteColor.withOpacity(0.01),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: CommonWidget().alatsiText(
                        text: "Mining Rig",
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CommonWidget().alatsiText(
                    text: "Upgrade Rig by",
                    textColor: AppColors.whiteColor.withOpacity(.2),
                    textSize: 15.0,
                    textWeight: FontWeight.w500,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '0.0025/min ',
                            style: GoogleFonts.alatsi(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                        TextSpan(
                          text: '+ 0.001/min ',
                          style: GoogleFonts.alatsi(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.skyColor),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.skyColor)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.icons + "5.png",
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              CommonWidget().alatsiText(
                                  text: "3",
                                  textAlign: TextAlign.center,
                                  textColor: AppColors.whiteColor,
                                  textSize: 18.0,
                                  textWeight: FontWeight.w700),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.skyColor)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.icons + "4.png",
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              CommonWidget().alatsiText(
                                  text: "3000",
                                  textAlign: TextAlign.center,
                                  textColor: AppColors.whiteColor,
                                  textSize: 18.0,
                                  textWeight: FontWeight.w700),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: CommonWidget().alatsiText(
                              text: "Upgrade",
                              textAlign: TextAlign.center,
                              textColor: AppColors.bgColor,
                              textSize: 18.0,
                              textWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //====================================================================
            SizedBox(height: 15),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.skyColor, width: 2),
                  color: AppColors.whiteColor.withOpacity(0.01),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: CommonWidget().alatsiText(
                        text: "Mining Speed",
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CommonWidget().alatsiText(
                    text: "Upgrade Speed by",
                    textColor: AppColors.whiteColor.withOpacity(.2),
                    textSize: 15.0,
                    textWeight: FontWeight.w500,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '30Gh/s ',
                            style: GoogleFonts.alatsi(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                        TextSpan(
                          text: '+ 30Gh/s',
                          style: GoogleFonts.alatsi(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.skyColor),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.skyColor)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.icons + "5.png",
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              CommonWidget().alatsiText(
                                  text: "3",
                                  textAlign: TextAlign.center,
                                  textColor: AppColors.whiteColor,
                                  textSize: 18.0,
                                  textWeight: FontWeight.w700),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.skyColor)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.icons + "4.png",
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              CommonWidget().alatsiText(
                                  text: "3000",
                                  textAlign: TextAlign.center,
                                  textColor: AppColors.whiteColor,
                                  textSize: 18.0,
                                  textWeight: FontWeight.w700),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: CommonWidget().alatsiText(
                              text: "Upgrade",
                              textAlign: TextAlign.center,
                              textColor: AppColors.bgColor,
                              textSize: 18.0,
                              textWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //====================================================================
            SizedBox(height: 15),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.skyColor, width: 2),
                  color: AppColors.whiteColor.withOpacity(0.01),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: CommonWidget().alatsiText(
                        text: "Mining Time",
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CommonWidget().alatsiText(
                    text: "Upgrade Time by",
                    textColor: AppColors.whiteColor.withOpacity(.2),
                    textSize: 15.0,
                    textWeight: FontWeight.w500,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '02:00:00 ',
                            style: GoogleFonts.alatsi(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: AppColors.whiteColor)),
                        TextSpan(
                          text: '+ 00:20:00 ',
                          style: GoogleFonts.alatsi(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.skyColor),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.skyColor)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.icons + "5.png",
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              CommonWidget().alatsiText(
                                  text: "3",
                                  textAlign: TextAlign.center,
                                  textColor: AppColors.whiteColor,
                                  textSize: 18.0,
                                  textWeight: FontWeight.w700),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.skyColor)),
                          child: Row(
                            children: [
                              Image.asset(
                                AppImages.icons + "4.png",
                                width: 25,
                              ),
                              SizedBox(width: 10),
                              CommonWidget().alatsiText(
                                  text: "3000",
                                  textAlign: TextAlign.center,
                                  textColor: AppColors.whiteColor,
                                  textSize: 18.0,
                                  textWeight: FontWeight.w700),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: CommonWidget().alatsiText(
                              text: "Upgrade",
                              textAlign: TextAlign.center,
                              textColor: AppColors.bgColor,
                              textSize: 18.0,
                              textWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.15)
          ],
        ),
      ),
    );
  }
}
