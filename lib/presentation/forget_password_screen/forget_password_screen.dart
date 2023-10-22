import 'controller/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends GetWidget<ForgetPasswordController> {
  const ForgetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 24.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                ),
              ),
              CustomImageView(
                svgPath: ImageConstant.imgGroup94,
                height: 256.v,
                width: 360.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  top: 33.v,
                ),
                child: Text(
                  "msg_did_you_forgot_password".tr,
                  style: CustomTextStyles.titleMediumGray80001_1,
                ),
              ),
              Container(
                width: 245.h,
                margin: EdgeInsets.only(
                  left: 22.h,
                  top: 1.v,
                ),
                child: Text(
                  "msg_pleae_enter_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeGray40002_1,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 27.h,
                  top: 16.v,
                ),
                child: Text(
                  "lbl_email".tr,
                  style: CustomTextStyles.labelLargeInter,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25.h,
                  top: 5.v,
                ),
                child: Text(
                  "msg_ex_example_gmail_com".tr,
                  style: CustomTextStyles.titleMediumGray40002,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  color: appTheme.gray40002,
                  indent: 25.h,
                  endIndent: 22.h,
                ),
              ),
              SizedBox(height: 87.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_use_phone_number".tr.toUpperCase(),
                  style: CustomTextStyles.labelLargeInterPrimary.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_send_otp".tr,
          margin: EdgeInsets.only(
            left: 25.h,
            right: 22.h,
            bottom: 27.v,
          ),
        ),
      ),
    );
  }
}
