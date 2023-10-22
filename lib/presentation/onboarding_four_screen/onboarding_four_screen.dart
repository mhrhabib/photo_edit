import 'controller/onboarding_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  const OnboardingFourScreen({Key? key})
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
                height: 315.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 30.v,
                ),
                decoration: AppDecoration.fillDeepPurple,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgVectorIndigo10001,
                      height: 254.v,
                      width: 263.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 6.h),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgGroupGray50,
                      height: 182.v,
                      width: 308.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 26.v,
                ),
                child: Text(
                  "msg_build_cover_letter".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Container(
                width: 288.h,
                margin: EdgeInsets.fromLTRB(24.h, 6.v, 47.h, 5.v),
                child: Text(
                  "msg_craft_the_perfect".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge,
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
              CustomElevatedButton(
                width: 205.h,
                text: "lbl_next".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCheckmark,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
