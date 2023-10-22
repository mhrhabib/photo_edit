import 'controller/adjust_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AdjustScreen extends GetWidget<AdjustController> {
  const AdjustScreen({Key? key})
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
                height: 247.v,
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
              SizedBox(height: 93.v),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_amount".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Container(
                      height: 8.v,
                      width: 237.h,
                      margin: EdgeInsets.symmetric(vertical: 4.v),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: SizedBox(
                                width: 237.h,
                                child: Divider(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray100,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_0".tr,
                        style: theme.textTheme.bodySmall,
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
