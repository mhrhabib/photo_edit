import 'controller/forget_password_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordOneScreen extends GetWidget<ForgetPasswordOneController> {
  const ForgetPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 24.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 87.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.gradientDeepPurpleToPrimary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 37.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgFrameBlue200,
                      height: 184.v,
                      width: 186.h,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 61.v,
                  ),
                  child: Text(
                    "msg_enter_verification".tr,
                    style: CustomTextStyles.titleMediumGray80001_1,
                  ),
                ),
              ),
              Container(
                width: 308.h,
                margin: EdgeInsets.only(
                  left: 25.h,
                  top: 2.v,
                  right: 27.h,
                ),
                child: Text(
                  "msg_please_enter_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeGray40002_1,
                ),
              ),
              Obx(
                () => CustomPinCodeTextField(
                  context: context,
                  margin: EdgeInsets.only(
                    left: 74.h,
                    top: 50.v,
                    right: 78.h,
                  ),
                  controller: controller.otpController.value,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 62.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_didn_t_get_any_otp2".tr,
                      style: CustomTextStyles.labelLargeGray40001,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_resend_again".tr,
                      style: CustomTextStyles.labelLargePrimary_1.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_verify".tr,
          margin: EdgeInsets.only(
            left: 25.h,
            right: 22.h,
            bottom: 26.v,
          ),
        ),
      ),
    );
  }
}
