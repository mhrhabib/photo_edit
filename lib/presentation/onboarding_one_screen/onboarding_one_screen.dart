import 'controller/onboarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_checkbox_button.dart';
import 'package:photo_edit/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key})
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
                padding: EdgeInsets.symmetric(
                  horizontal: 52.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillDeepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 50.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup,
                      height: 225.v,
                      width: 255.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 29.v,
                ),
                child: Text(
                  "lbl_text_to_speech".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 302.h,
                  margin: EdgeInsets.fromLTRB(24.h, 3.v, 33.h, 5.v),
                  child: Text(
                    "msg_let_our_app_give".tr,
                    maxLines: 5,
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
            bottom: 14.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomOutlinedButton(
                height: 38.v,
                width: 66.h,
                text: "lbl_skip".tr,
                margin: EdgeInsets.symmetric(vertical: 1.v),
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
