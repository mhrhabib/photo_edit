import 'controller/onboarding_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingFiveScreen extends GetWidget<OnboardingFiveController> {
  const OnboardingFiveScreen({Key? key})
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
                  horizontal: 35.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillDeepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 22.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgGroupTeal200,
                      height: 254.v,
                      width: 289.h,
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
                  "lbl_get_started".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 302.h,
                  margin: EdgeInsets.fromLTRB(24.h, 6.v, 33.h, 5.v),
                  child: Text(
                    "msg_your_all_in_one".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          height: 48.v,
          text: "lbl_get_started2".tr,
          margin: EdgeInsets.only(
            left: 50.h,
            right: 49.h,
            bottom: 24.v,
          ),
          leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
              svgPath: ImageConstant.imgCheckmark,
            ),
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL24,
        ),
      ),
    );
  }
}
