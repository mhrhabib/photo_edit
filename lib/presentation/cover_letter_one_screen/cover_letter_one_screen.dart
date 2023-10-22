import 'controller/cover_letter_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class CoverLetterOneScreen extends GetWidget<CoverLetterOneController> {
  const CoverLetterOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 16.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_dtasky".tr,
          ),
          actions: [
            AppbarCircleimage1(
              imagePath: ImageConstant.imgEllipse532x32,
              margin: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 12.v,
              ),
            ),
          ],
          styleType: Style.bgGradientnameprimarynamedeeppurple500,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15.h,
                      right: 15.h,
                      bottom: 5.v,
                    ),
                    decoration: AppDecoration.gradientDeeppurple500ToPrimary1,
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage5,
                          height: 421.v,
                          width: 326.h,
                        ),
                        SizedBox(height: 24.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 71.v,
                              width: 55.h,
                              margin: EdgeInsets.only(top: 8.v),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: 70.v,
                                    width: 54.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 71.v,
                                      width: 55.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            theme.colorScheme.onPrimary
                                                .withOpacity(0),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage6,
                              height: 71.v,
                              width: 55.h,
                              margin: EdgeInsets.only(top: 8.v),
                            ),
                            Container(
                              decoration: AppDecoration.outlineBlack9002,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage6,
                                height: 74.v,
                                width: 56.h,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage6,
                              height: 71.v,
                              width: 55.h,
                              margin: EdgeInsets.only(top: 8.v),
                            ),
                            Container(
                              height: 71.v,
                              width: 55.h,
                              margin: EdgeInsets.only(top: 8.v),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage6,
                                    height: 70.v,
                                    width: 54.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 71.v,
                                      width: 55.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 0),
                                          end: Alignment(0.5, 1),
                                          colors: [
                                            theme.colorScheme.onPrimary
                                                .withOpacity(1),
                                            theme.colorScheme.onPrimary
                                                .withOpacity(0),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "lbl_templet_3".tr,
                          style: CustomTextStyles.labelMediumPrimarySemiBold,
                        ),
                        CustomElevatedButton(
                          text: "lbl_save_as".tr,
                          margin: EdgeInsets.only(
                            left: 50.h,
                            top: 16.v,
                            right: 48.h,
                          ),
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 4.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgContrast,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientPrimaryToDeepPurpleTL20Decoration,
                          buttonTextStyle: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
