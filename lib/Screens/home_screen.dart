// ignore_for_file: deprecated_member_use, prefer_interpolation_to_compose_strings, sort_child_properties_last, unused_field

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mining_app/Helpers/colors.dart';
import 'package:mining_app/Helpers/common_widgets.dart';
import 'package:mining_app/Helpers/images.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const int countdownDuration = 2 * 60 * 60; // 2 hours in seconds
  int remainingSeconds = countdownDuration;
  Timer? _timer;
  bool isRunning = false;

  void startTimer() {
    if (isRunning) return;

    setState(() {
      isRunning = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds > 0) {
        setState(() {
          remainingSeconds--;
        });
      } else {
        timer.cancel();
        setState(() {
          isRunning = false;
        });
      }
    });
  }

  String formatTime(int seconds) {
    final hours = (seconds ~/ 3600).toString().padLeft(2, '0');
    final minutes = ((seconds % 3600) ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$secs";
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        surfaceTintColor: AppColors.bgColor,
        titleSpacing: 20,
        title: CommonWidget().alatsiText(
            text: "Hi,\nNaimish Varsani", textColor: AppColors.whiteColor),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              radius: 18,
              child: Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 170,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: AppColors.skyColor.withOpacity(0.3),
                      border: Border.all(color: AppColors.skyColor, width: 2),
                      image: DecorationImage(
                          image:
                              AssetImage(AppImages.images + "coin_layer.png")),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppImages.images + "coin.png",
                        width: Get.width * 0.2,
                      ),
                      CommonWidget().alatsiText(
                          text: "Supper Coin",
                          textColor: AppColors.whiteColor,
                          textSize: 15.0,
                          textWeight: FontWeight.w400),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: '412',
                                style: GoogleFonts.alatsi(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor)),
                            TextSpan(
                              text: ' = 0.24 UPDT',
                              style: GoogleFonts.alatsi(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  width: Get.width * 0.4,
                  decoration: BoxDecoration(
                      color: AppColors.greenColor.withOpacity(0.3),
                      border: Border.all(color: AppColors.greenColor, width: 2),
                      image: DecorationImage(
                          image:
                              AssetImage(AppImages.images + "speed_layer.png")),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppImages.images + "speed.png",
                        width: Get.width * 0.2,
                      ),
                      CommonWidget().alatsiText(
                          text: "Speed",
                          textColor: AppColors.whiteColor,
                          textSize: 15.0,
                          textWeight: FontWeight.w400),
                      CommonWidget().alatsiText(
                          text: "30Ghls",
                          textColor: AppColors.whiteColor,
                          textSize: 17.0,
                          textWeight: FontWeight.w700)
                    ],
                  ),
                ),
              ],
            ),
            //==================================================================
            SizedBox(height: Get.width * 0.05),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.bgColor.withOpacity(0.2),
                  border: Border.all(color: AppColors.skyColor, width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Image.asset(
                      AppImages.images + "icon.png",
                      width: 60,
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonWidget().alatsiText(
                            text: "Current Balance",
                            textColor: AppColors.whiteColor,
                            textSize: 16.0,
                            textWeight: FontWeight.w500),
                        Row(
                          children: [
                            CommonWidget().alatsiText(
                                text: "0.9 USDT",
                                textColor: AppColors.whiteColor,
                                textSize: 18.0,
                                textWeight: FontWeight.w500),
                            SizedBox(width: 25),
                            CommonWidget().alatsiText(
                                text: "0.0025/min",
                                textColor: AppColors.whiteColor,
                                textSize: 14.0,
                                textWeight: FontWeight.w500),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: CommonWidget().alatsiText(
                              text: "Start Mining",
                              textColor: AppColors.bgColor),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.whiteColor,
                              textStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //==================================================================
            SizedBox(height: Get.width * 0.05),
            Container(
              width: Get.width,
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.02),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: isRunning ? null : startTimer,
                    child: SimpleCircularProgressBar(
                      mergeMode: true,
                      progressStrokeWidth: 10,
                      backStrokeWidth: 10,
                      animationDuration:
                          isRunning == false ? 0 : remainingSeconds,
                      onGetText: (double value) {
                        return Text(
                          isRunning == false
                              ? "Start Mining"
                              : '${formatTime(remainingSeconds)} \n34 Gh/s',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.alatsi(
                            fontSize: 15,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        child: Icon(
                          Icons.access_time_filled,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.skyColor,
                        child: Icon(
                          Icons.rocket_launch_rounded,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.025,
            )
          ],
        ),
      ),
    );
  }
}
