import 'controller/remove_background_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class RemoveBackgroundOneScreen
    extends GetWidget<RemoveBackgroundOneController> {
  const RemoveBackgroundOneScreen({Key? key})
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
              Container(
                padding: EdgeInsets.all(24.h),
                decoration: AppDecoration.gradientDeeppurple500ToPrimary1,
                child: Column(
                  children: [
                    SizedBox(height: 12.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text(
                                    "lbl_original".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Container(
                                  height: 20.v,
                                  width: 133.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                          "msg_remove_background".tr,
                                          style: CustomTextStyles
                                              .labelLargePrimary,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                          width: 128.h,
                                          child: Divider(
                                            color: theme.colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 9.v),
                          SizedBox(
                            height: 246.v,
                            width: 302.h,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(6.h, 16.v, 6.h, 3.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomElevatedButton(
                                  width: 141.h,
                                  text: "lbl_download_image".tr,
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientPrimaryToDeepPurpleTL20Decoration,
                                  buttonTextStyle:
                                      CustomTextStyles.labelLargeOnPrimary,
                                ),
                                CustomOutlinedButton(
                                  width: 133.h,
                                  text: "lbl_edit_photo".tr,
                                  leftIcon: Container(
                                    margin: EdgeInsets.only(right: 10.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgBrush,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                    ),
                                  ),
                                  buttonStyle:
                                      CustomButtonStyles.outlinePrimaryTL20,
                                  buttonTextStyle:
                                      CustomTextStyles.labelLargePrimary,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      width: 172.h,
                      text: "lbl_upload_image".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgUpload,
                        ),
                      ),
                      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary,
                    ),
                    SizedBox(height: 5.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_or_paste_an_image2".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: " ",
                          ),
                          TextSpan(
                            text: "lbl_url".tr,
                            style: CustomTextStyles.bodyMediumPrimary.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgGroup46,
                height: 56.v,
                width: 360.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
