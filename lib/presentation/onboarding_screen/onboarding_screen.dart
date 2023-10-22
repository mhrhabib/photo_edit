import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_checkbox_button.dart';
import 'package:photo_edit/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key})
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
              SizedBox(
                height: 329.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.h,
                          vertical: 39.v,
                        ),
                        decoration: AppDecoration.fillDeepPurple,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 18.v),
                            CustomImageView(
                              svgPath: ImageConstant.imgVector2,
                              height: 219.v,
                              width: 343.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup95,
                      height: 274.v,
                      width: 179.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 15.v,
                ),
                child: Text(
                  "lbl_speech_to_text".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 306.h,
                  margin: EdgeInsets.fromLTRB(24.h, 3.v, 30.h, 5.v),
                  child: Text(
                    "msg_turn_your_spoken".tr,
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
