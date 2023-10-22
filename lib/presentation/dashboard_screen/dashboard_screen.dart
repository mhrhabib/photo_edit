import 'controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DashboardScreen extends GetWidget<DashboardController> {
  const DashboardScreen({Key? key})
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
            padding: EdgeInsets.only(top: 16.v),
            child: SizedBox(
              height: 742.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 705.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0, 0.5),
                          end: Alignment(1, 0.5),
                          colors: [
                            appTheme.deepPurple500,
                            theme.colorScheme.primary.withOpacity(0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.h,
                        vertical: 57.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup61,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: SizedBox(
                        width: 137.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_good_morning".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              TextSpan(
                                text: " \n".tr,
                                style: CustomTextStyles.titleMedium16_1,
                              ),
                              TextSpan(
                                text: "lbl_ashikur_rahman".tr,
                                style: CustomTextStyles.titleMediumMedium,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        right: 24.h,
                        bottom: 60.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25.v),
                            decoration: AppDecoration.gradient.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 13.v,
                                    bottom: 9.v,
                                  ),
                                  child: Text(
                                    "lbl_speech_to_text2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgMic,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25.v),
                            decoration: AppDecoration.gradient.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 13.v,
                                    bottom: 9.v,
                                  ),
                                  child: Text(
                                    "lbl_text_to_speech2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgVolume,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          CustomElevatedButton(
                            height: 100.v,
                            text: "msg_remove_background".tr,
                            rightIcon: Container(
                              padding: EdgeInsets.all(10.h),
                              margin: EdgeInsets.only(left: 7.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25.h,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0.77, 0.87),
                                  end: Alignment(0.22, 0.13),
                                  colors: [
                                    appTheme.deepPurple500,
                                    theme.colorScheme.primary,
                                  ],
                                ),
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgImage,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientPrimaryToDeepPurpleTL10Decoration,
                            buttonTextStyle: theme.textTheme.titleMedium!,
                          ),
                          SizedBox(height: 12.v),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25.v),
                            decoration: AppDecoration.gradient.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 13.v,
                                    bottom: 9.v,
                                  ),
                                  child: Text(
                                    "lbl_image_to_text".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFiletext,
                                  height: 30.adaptSize,
                                  width: 30.adaptSize,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 25.v),
                            decoration: AppDecoration.gradient.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 11.v),
                                  child: Text(
                                    "msg_build_cover_letter".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFile,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
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
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {},
        ),
      ),
    );
  }
}
