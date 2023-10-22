import 'controller/add_background_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AddBackgroundScreen extends GetWidget<AddBackgroundController> {
  const AddBackgroundScreen({Key? key})
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
              SizedBox(height: 37.v),
              Container(
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL10,
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
                        bottom: 14.v,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 9.h,
                              vertical: 10.v,
                            ),
                            decoration: AppDecoration.outlineOnPrimary.copyWith(
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
                            decoration: AppDecoration
                                .gradientPrimaryToDeepPurple
                                .copyWith(
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
