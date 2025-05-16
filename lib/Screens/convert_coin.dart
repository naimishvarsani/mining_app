import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mining_app/Helpers/images.dart';

import '../Helpers/colors.dart';
import '../Helpers/common_widgets.dart';

class ConvertCoin extends StatelessWidget {
  const ConvertCoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.bgColor,
        surfaceTintColor: AppColors.bgColor,
        centerTitle: true,
        title: CommonWidget().alatsiText(
            text: "Convert Super Coins", textColor: AppColors.whiteColor),
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
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              border: Border.all(color: AppColors.whiteColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(AppImages.icons + "Question.png"),
            ),
          )
        ],
      ),
      body: ColorfulSafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: AppColors.whiteColor,
                  child: Image.asset(AppImages.images + "convert.png"),
                ),
              ),
              SizedBox(height: 10),
              CommonWidget().alatsiText(
                  text: "Refer Friends",
                  textColor: AppColors.whiteColor,
                  textSize: 18.0,
                  textWeight: FontWeight.w500),
              SizedBox(height: 10),
              SizedBox(
                width: Get.width * .7,
                child: CommonWidget().alatsiText(
                    text: "Invite friends, collect reward. It’s that easy!",
                    textAlign: TextAlign.center,
                    textColor: AppColors.whiteColor.withOpacity(0.3),
                    textSize: 15.0,
                    textWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.skyColor)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonWidget().alatsiText(
                        text: "Coming soon...",
                        textAlign: TextAlign.center,
                        textColor: AppColors.whiteColor,
                        textSize: 17.0,
                        textWeight: FontWeight.w700),
                    SizedBox(height: 10),
                    CommonWidget().alatsiText(
                        text:
                            "Our technical team is currently working on the refer feature. This feature is available in upcoming release.",
                        textAlign: TextAlign.start,
                        textColor: AppColors.whiteColor.withOpacity(0.3),
                        textSize: 15.0,
                        textWeight: FontWeight.w500),
                    SizedBox(height: 10),
                    CommonWidget().alatsiText(
                        text: "Thank you for your support.",
                        textAlign: TextAlign.start,
                        textColor: AppColors.whiteColor.withOpacity(0.7),
                        textSize: 15.0,
                        textWeight: FontWeight.w500),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.skyColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: CommonWidget().alatsiText(
                            text: "Invite Friend",
                            textAlign: TextAlign.start,
                            textColor: AppColors.bgColor,
                            textSize: 16.0,
                            textWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: CommonWidget().alatsiText(
                          text: "Term & Conditions*",
                          textAlign: TextAlign.start,
                          textColor: AppColors.whiteColor.withOpacity(0.5),
                          textSize: 14.0,
                          textWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: Get.width * 0.9,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.skyColor)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonWidget().alatsiText(
                        text: "Redeem Gift Voucher",
                        textAlign: TextAlign.center,
                        textColor: AppColors.whiteColor,
                        textSize: 17.0,
                        textWeight: FontWeight.w700),
                    SizedBox(height: 10),
                    CommonWidget().alatsiText(
                        text: "You can only redeem one unique code per account",
                        textAlign: TextAlign.start,
                        textColor: AppColors.whiteColor.withOpacity(0.3),
                        textSize: 15.0,
                        textWeight: FontWeight.w500),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        border: Border.all(
                            color: AppColors.whiteColor.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        style: TextStyle(color: AppColors.whiteColor),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: InputBorder.none,
                            hintText: "Enter Code"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: AppColors.skyColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: CommonWidget().alatsiText(
                            text: "Redeem Gifts",
                            textAlign: TextAlign.start,
                            textColor: AppColors.bgColor,
                            textSize: 16.0,
                            textWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
