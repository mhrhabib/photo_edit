import 'controller/cover_letter_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage_1.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class CoverLetterScreen extends GetWidget<CoverLetterController> {
  const CoverLetterScreen({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 24.v),
              decoration: AppDecoration.gradientDeeppurple500ToPrimary1,
              child: Column(
                children: [
                  SizedBox(height: 3.v),
                  SizedBox(
                    height: 556.v,
                    width: 329.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage5,
                          height: 421.v,
                          width: 326.h,
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      decoration:
                                          AppDecoration.outlineBlack9002,
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
                                  style: CustomTextStyles
                                      .labelMediumPrimarySemiBold,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 112.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.h,
                              vertical: 3.v,
                            ),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 1.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_pdf".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001_1,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 3.v,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_docx".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001_1,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 3.v,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "lbl_txt".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001_1,
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text(
                                          "lbl_jpeg".tr,
                                          style: CustomTextStyles
                                              .labelMediumGray80001_1,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 3.v,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_png".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001_1,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgCrown1,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 5.h,
                                          top: 3.v,
                                          bottom: 4.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(left: 35.h),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 3.v,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_rtf".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001_1,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgCrown1,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 5.h,
                                          top: 3.v,
                                          bottom: 4.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(left: 39.h),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_odt".tr,
                                      style: CustomTextStyles
                                          .labelMediumGray80001_1,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCrown1,
                                      height: 8.adaptSize,
                                      width: 8.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 3.v,
                                        bottom: 4.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgDownload,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(left: 37.h),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Divider(
                                    indent: 1.h,
                                    endIndent: 1.h,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 1.h,
                                    top: 3.v,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_pages".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001_1,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgCrown1,
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin: EdgeInsets.only(
                                          left: 5.h,
                                          top: 3.v,
                                          bottom: 4.v,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(left: 24.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 77.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.gradient.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          child: Text(
                            "lbl_save_as".tr,
                            style: CustomTextStyles.labelLargeOnPrimary,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgContrast,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 22.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroup46,
                    height: 56.v,
                    width: 360.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
