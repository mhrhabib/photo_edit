import 'controller/remove_background_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class RemoveBackgroundTwoScreen
    extends GetWidget<RemoveBackgroundTwoController> {
  const RemoveBackgroundTwoScreen({Key? key})
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
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse5,
              margin: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 8.v,
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
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.gradientDeeppurple500ToPrimary1,
                child: Column(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
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
                    Container(
                      width: 233.h,
                      margin: EdgeInsets.only(
                        left: 40.h,
                        top: 17.v,
                        right: 39.h,
                      ),
                      child: Text(
                        "msg_upload_an_image_to".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineMediumOnPrimary,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    CustomElevatedButton(
                      height: 48.v,
                      width: 190.h,
                      text: "lbl_upload_image".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgUpload,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL24,
                    ),
                    SizedBox(height: 10.v),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 61.h,
                  top: 16.v,
                  right: 64.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGrid,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgSettingsOnprimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ],
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
