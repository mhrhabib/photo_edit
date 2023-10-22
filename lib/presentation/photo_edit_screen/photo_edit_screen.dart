import 'controller/photo_edit_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class PhotoEditScreen extends GetWidget<PhotoEditController> {
  const PhotoEditScreen({Key? key})
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
