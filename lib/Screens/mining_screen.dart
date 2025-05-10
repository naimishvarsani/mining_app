// ignore_for_file: prefer_interpolation_to_compose_strings, deprecated_member_use

import 'dart:async';
import 'dart:math';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Helpers/colors.dart';
import '../Helpers/common_widgets.dart';
import '../Helpers/images.dart';

class MiningScreen extends StatefulWidget {
  const MiningScreen({super.key});

  @override
  State<MiningScreen> createState() => _MiningScreenState();
}

class _MiningScreenState extends State<MiningScreen> {
  int MAX = 100;
  List<GlobalKey<FlipCardState>> cardKeys =
      List.generate(16, (_) => GlobalKey<FlipCardState>());
  List<int> flippedIndexes = [];
  int flipCount = 0;
  Timer? flipResetTimer;

  void flipCard(int index) {
    if (flippedIndexes.contains(index)) return;
    if (flipCount >= 4) return;

    setState(() {
      flipCount++;
      flippedIndexes.add(index);
      cardKeys[index].currentState?.toggleCard();
    });

    // if (flippedIndexes.length == 2) {
    //   flipResetTimer?.cancel();
    //   flipResetTimer = Timer(Duration(seconds: 2), () {
    //     setState(() {
    //       for (int idx in flippedIndexes) {
    //         cardKeys[idx].currentState?.toggleCard();
    //       }
    //       flippedIndexes.clear();
    //     });
    //   });
    // }
  }

  @override
  void dispose() {
    flipResetTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ColorfulSafeArea(
        child: SingleChildScrollView(
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
              //==================================================================
              SizedBox(height: 10),
              CommonWidget().alatsiText(
                  text: "Flip & Win",
                  textColor: AppColors.whiteColor,
                  textSize: 18.0,
                  textWeight: FontWeight.w500),
              SizedBox(height: 10),
              SizedBox(
                width: Get.width * .7,
                child: CommonWidget().alatsiText(
                    text:
                        "You will win the super coins by playing a simple game ",
                    textAlign: TextAlign.center,
                    textColor: AppColors.whiteColor.withOpacity(0.3),
                    textSize: 15.0,
                    textWeight: FontWeight.w500),
              ),
              //==================================================================
              SizedBox(height: 10),
              Container(
                width: Get.width * 0.27,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.skyColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      AppImages.icons + "4.png",
                      width: 25,
                    ),
                    SizedBox(width: 10),
                    CommonWidget().alatsiText(
                        text: "135",
                        textAlign: TextAlign.center,
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textWeight: FontWeight.w700),
                  ],
                ),
              ),
              //==================================================================
              SizedBox(height: 20),
              Container(
                height: 40,
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    CommonWidget().alatsiText(
                        text: "${flipCount}/4",
                        textColor: AppColors.whiteColor,
                        textSize: 18.0,
                        textWeight: FontWeight.w700),
                    Container(
                      height: 30,
                      width: 100,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          color: AppColors.bgColor.withOpacity(.5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: CommonWidget().alatsiText(
                            text: "Flip a Card",
                            textColor: AppColors.skyColor,
                            textSize: 15.0,
                            textWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              //==================================================================
              SizedBox(height: 10),
              GridView.builder(
                padding: EdgeInsets.all(10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 16,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 70,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => flipCard(index),
                    child: FlipCard(
                      key: cardKeys[index],
                      flipOnTouch: false,
                      front: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.skyColor),
                          color: AppColors.whiteColor.withOpacity(.2),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(AppImages.icons + "gift.png"),
                      ),
                      back: Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor.withOpacity(.4),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Text(
                          "${Random().nextInt(MAX)}",
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
                  );
                },
              ),
              //================================================================
              SizedBox(height: 10),
              SizedBox(
                width: Get.width * 0.7,
                child: CommonWidget().alatsiText(
                    text:
                        "* You can flip only 4 cards at a time. Once you flip all the cards you have to wait for the next round for 30 minutes.",
                    textColor: AppColors.whiteColor.withOpacity(.2),
                    textAlign: TextAlign.center,
                    textSize: 15.0,
                    textWeight: FontWeight.w500),
              ),
              SizedBox(
                height: Get.height * 0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
