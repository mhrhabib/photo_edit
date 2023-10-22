import 'controller/speech_to_text_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SpeechToTextOneScreen extends GetWidget<SpeechToTextOneController> {
  const SpeechToTextOneScreen({Key? key})
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
            child: Container(
              padding: EdgeInsets.all(24.h),
              decoration: AppDecoration.gradientDeeppurple500ToPrimary1,
              child: Column(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Container(
                      height: 257.v,
                      width: 312.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 279.h,
                              child: Text(
                                "msg_lorem_ipsum_is_simply2".tr,
                                maxLines: 11,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                                style: CustomTextStyles.labelMediumGray80001
                                    .copyWith(
                                  height: 1.80,
                                ),
                              ),
                            ),
                          ),
                          CustomIconButton(
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgComputer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    text: "lbl_save_as".tr,
                    margin: EdgeInsets.only(
                      left: 41.h,
                      top: 24.v,
                      right: 40.h,
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
                  SizedBox(height: 40.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgGroupOnprimary,
                    height: 37.v,
                    width: 240.h,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 116.h,
                      top: 32.v,
                      right: 116.h,
                    ),
                    padding: EdgeInsets.all(28.h),
                    decoration: AppDecoration.gradient.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
