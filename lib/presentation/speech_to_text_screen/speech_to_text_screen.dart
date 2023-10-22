import 'controller/speech_to_text_controller.dart';
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
class SpeechToTextScreen extends GetWidget<SpeechToTextController> {
  const SpeechToTextScreen({Key? key})
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
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.gradientDeeppurple500ToPrimary1,
              child: Column(
                children: [
                  Container(
                    width: 312.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 207.v),
                        CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillGray,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgComputer,
                          ),
                        ),
                      ],
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
                    buttonStyle: CustomButtonStyles.fillGray,
                    buttonTextStyle: CustomTextStyles.labelLargeOnPrimary,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 55.v),
                      child: Divider(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
                        indent: 32.h,
                        endIndent: 48.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 54.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgMicOnprimary,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
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
