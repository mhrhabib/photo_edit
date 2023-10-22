import 'controller/onboarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_checkbox_button.dart';
import 'package:photo_edit/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: AppDecoration.fillDeepPurple,
                child: Column(
                  children: [
                    SizedBox(height: 44.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 271.v,
                      width: 360.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 30.v,
                ),
                child: Text(
                  "lbl_image_to_text".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 303.h,
                  margin: EdgeInsets.fromLTRB(24.h, 2.v, 32.h, 5.v),
                  child: Text(
                    "msg_unlock_the_power".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 13.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlinedButton(
                width: 65.h,
                text: "lbl_skip".tr,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Obx(
                () => CustomCheckboxButton(
                  text: "lbl_next".tr,
                  value: controller.next.value,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 8.v,
                  ),
                  onChange: (value) {
                    controller.next.value = value;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
