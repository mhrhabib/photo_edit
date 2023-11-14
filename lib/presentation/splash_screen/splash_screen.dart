import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0.5),
                        end: Alignment(1, 0.5),
                        colors: [
                      theme.colorScheme.primary,
                      appTheme.deepPurple500
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVector1,
                              height: 256.v,
                              width: 342.h),
                          SizedBox(height: 44.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_dtasky".tr,
                                  style: theme.textTheme.headlineLarge)),
                          CustomImageView(
                              imagePath: ImageConstant.imgVector1Indigo600,
                              height: 296.v,
                              width: 360.h)
                        ])))));
  }
}
