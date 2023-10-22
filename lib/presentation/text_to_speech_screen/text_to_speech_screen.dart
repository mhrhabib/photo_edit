import 'controller/text_to_speech_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_checkbox_button.dart';
import 'package:photo_edit/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class TextToSpeechScreen extends GetWidget<TextToSpeechController> {
  const TextToSpeechScreen({Key? key})
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 9.v),
                        child: Text(
                          "msg_select_voice_model".tr,
                          style: CustomTextStyles.titleMediumGray80001,
                        ),
                      ),
                      Container(
                        width: 153.h,
                        margin: EdgeInsets.only(left: 16.h),
                        padding: EdgeInsets.all(8.h),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 2.v),
                              child: Text(
                                "lbl_us_female_1".tr,
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgContrast,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 506.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 23.h,
                            vertical: 19.v,
                          ),
                          decoration:
                              AppDecoration.gradientDeeppurple500ToPrimary1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 5.v),
                              SizedBox(
                                height: 393.v,
                                width: 312.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Container(
                                          height: 375.v,
                                          width: 312.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 16.h,
                                            vertical: 19.v,
                                          ),
                                          decoration: AppDecoration.outlineBlack
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: SizedBox(
                                                  width: 279.h,
                                                  child: Text(
                                                    "msg_lorem_ipsum_is_simply2"
                                                        .tr,
                                                    maxLines: 14,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: CustomTextStyles
                                                        .labelLargeMedium,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 84.v),
                                                  child: SizedBox(
                                                    child: Divider(
                                                      color: appTheme.gray80001,
                                                      endIndent: 58.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 99.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 3.v,
                                        ),
                                        decoration:
                                            AppDecoration.outlineBlack.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder6,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_mp3".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumGray80001_1,
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgDownload,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 51.h),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 88.h,
                                              child: Divider(),
                                            ),
                                            SizedBox(height: 3.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_wav".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumGray80001_1,
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgDownload,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 50.h),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 88.h,
                                              child: Divider(),
                                            ),
                                            SizedBox(height: 3.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_aac".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumGray80001_1,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCrown1,
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 3.v,
                                                    bottom: 4.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgDownload,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 39.h),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 88.h,
                                              child: Divider(),
                                            ),
                                            SizedBox(height: 3.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_wma".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumGray80001_1,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCrown1,
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 3.v,
                                                    bottom: 4.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgDownload,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 34.h),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 3.v),
                                            SizedBox(
                                              width: 88.h,
                                              child: Divider(),
                                            ),
                                            SizedBox(height: 3.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "lbl_opus".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumGray80001_1,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgCrown1,
                                                  height: 8.adaptSize,
                                                  width: 8.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 3.v,
                                                    bottom: 4.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgDownload,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 31.h),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 8.v),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 85.h,
                                        vertical: 8.v,
                                      ),
                                      decoration:
                                          AppDecoration.gradient.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder20,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.v),
                                            child: Text(
                                              "lbl_save_as".tr,
                                              style: CustomTextStyles
                                                  .labelLargeOnPrimary,
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
                                  ),
                                  CustomIconButton(
                                    height: 57.adaptSize,
                                    width: 57.adaptSize,
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.all(9.h),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgPlayarrow,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 23.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 17.h,
                            vertical: 7.v,
                          ),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL6,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Obx(
                                () => CustomCheckboxButton(
                                  width: 118.h,
                                  text: "lbl_english_male".tr,
                                  value: controller.englishFemale.value,
                                  textStyle:
                                      CustomTextStyles.labelMediumGray80001_1,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    controller.englishFemale.value = value;
                                  },
                                ),
                              ),
                              SizedBox(height: 1.v),
                              SizedBox(
                                width: 116.h,
                                child: Divider(),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => CustomCheckboxButton(
                                  width: 118.h,
                                  text: "msg_english_female".tr,
                                  value: controller.englishfemale.value,
                                  textStyle:
                                      CustomTextStyles.labelMediumPrimary,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    controller.englishfemale.value = value;
                                  },
                                ),
                              ),
                              SizedBox(height: 1.v),
                              SizedBox(
                                width: 116.h,
                                child: Divider(),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => CustomCheckboxButton(
                                  width: 118.h,
                                  text: "lbl_english_child".tr,
                                  value: controller.englishChild.value,
                                  textStyle:
                                      CustomTextStyles.labelMediumGray80001_1,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    controller.englishChild.value = value;
                                  },
                                ),
                              ),
                              SizedBox(height: 1.v),
                              SizedBox(
                                width: 116.h,
                                child: Divider(),
                              ),
                              SizedBox(height: 3.v),
                              Obx(
                                () => CustomCheckboxButton(
                                  width: 118.h,
                                  text: "lbl_french".tr,
                                  value: controller.frenchvalue.value,
                                  textStyle:
                                      CustomTextStyles.labelMediumGray80001_1,
                                  isRightCheck: true,
                                  onChange: (value) {
                                    controller.frenchvalue.value = value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
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
      ),
    );
  }
}
