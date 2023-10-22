import 'controller/add_bg_solid_color_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AddBgSolidColorScreen extends GetWidget<AddBgSolidColorController> {
  const AddBgSolidColorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 16.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              Spacer(),
              SizedBox(
                height: 249.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3246x360,
                      height: 246.v,
                      width: 360.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 248.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: appTheme.blue600,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle23removebgpreview,
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
              SizedBox(height: 9.v),
              Container(
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 160.h,
                        vertical: 8.v,
                      ),
                      decoration: AppDecoration.fillGray90001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL16,
                      ),
                      child: Container(
                        height: 4.v,
                        width: 39.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray800,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 8.v,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9.h,
                              vertical: 10.v,
                            ),
                            decoration: AppDecoration
                                .gradientPrimaryToDeepPurple
                                .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: SizedBox(
                              width: 29.h,
                              child: Text(
                                "lbl_solid_color".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.h,
                              vertical: 8.v,
                            ),
                            decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                SizedBox(
                                  width: 38.h,
                                  child: Text(
                                    "lbl_gallery_image".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.h,
                              vertical: 8.v,
                            ),
                            decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                SizedBox(
                                  width: 33.h,
                                  child: Text(
                                    "lbl_stock_image".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 5.v),
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 1.v,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "lbl_solid_color2".tr,
                              style: CustomTextStyles.labelMedium_1,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgFrame29,
                            height: 22.v,
                            width: 250.h,
                            margin: EdgeInsets.only(left: 17.h),
                          ),
                        ],
                      ),
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
