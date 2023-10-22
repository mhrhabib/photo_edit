import 'controller/crop_image_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

class CropImageDialog extends StatelessWidget {
  CropImageDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  CropImageController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 312.h,
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.fillOnError,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgClock,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
          SizedBox(height: 6.v),
          Container(
            height: 302.v,
            width: 312.h,
            padding: EdgeInsets.symmetric(
              horizontal: 42.h,
              vertical: 32.v,
            ),
            decoration: AppDecoration.fillBlack,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle23removebgpreview,
                  height: 156.v,
                  width: 191.h,
                  radius: BorderRadius.circular(
                    6.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 26.v,
                    right: 10.h,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgGroup51,
                  height: 228.adaptSize,
                  width: 228.adaptSize,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 12.v,
              right: 34.h,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: appTheme.lime600,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_1_1".tr,
                      style: CustomTextStyles.bodySmallLime600,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 29.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_16_9".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 22.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_4_3".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 25.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_3_2".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 8.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_9_16".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 13.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_3_4".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 12.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_2_3".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 9.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_4_6".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Container(
                        height: 16.v,
                        width: 13.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            width: 1.h,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_6_8".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.black900,
          ),
          CustomImageView(
            svgPath: ImageConstant.imgFrame46,
            height: 24.v,
            width: 256.h,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 9.v,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }
}
