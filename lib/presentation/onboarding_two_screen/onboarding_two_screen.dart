import 'controller/onboarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  const OnboardingTwoScreen({Key? key})
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
                  horizontal: 24.h,
                  vertical: 23.v,
                ),
                decoration: AppDecoration.fillDeepPurple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 9.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      color: theme.colorScheme.onPrimary.withOpacity(1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Container(
                        height: 260.v,
                        width: 312.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage3,
                              height: 246.v,
                              width: 302.h,
                              radius: BorderRadius.circular(
                                6.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 246.v,
                                width: 301.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgRectangle23removebgpreview,
                                      height: 246.v,
                                      width: 301.h,
                                      radius: BorderRadius.circular(
                                        6.h,
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 246.v,
                                        width: 165.h,
                                        child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: 246.v,
                                                width: 164.h,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle23,
                                                      height: 246.v,
                                                      width: 164.h,
                                                      radius: BorderRadius
                                                          .horizontal(
                                                        left: Radius.circular(
                                                            6.h),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 10.h),
                                                        child: SizedBox(
                                                          height: 246.v,
                                                          child:
                                                              VerticalDivider(
                                                            width: 4.h,
                                                            thickness: 4.v,
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimary
                                                                .withOpacity(1),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath: ImageConstant.imgRewind,
                                              height: 24.v,
                                              width: 27.h,
                                              alignment: Alignment.centerRight,
                                            ),
                                            Opacity(
                                              opacity: 0.5,
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  height: 246.v,
                                                  width: 151.h,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.horizontal(
                                                      left:
                                                          Radius.circular(6.h),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment(0, 0.55),
                                                      end: Alignment(1, 0.55),
                                                      colors: [
                                                        theme
                                                            .colorScheme.primary
                                                            .withOpacity(0.53),
                                                        theme
                                                            .colorScheme.primary
                                                            .withOpacity(0.53),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
                  "msg_remove_background".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ),
              Container(
                width: 274.h,
                margin: EdgeInsets.fromLTRB(24.h, 3.v, 61.h, 5.v),
                child: Text(
                  "msg_erase_distractions".tr,
                  maxLines: 6,
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
