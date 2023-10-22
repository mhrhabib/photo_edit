import 'controller/forget_password_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/core/utils/validation_functions.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordThreeScreen
    extends GetWidget<ForgetPasswordThreeController> {
  ForgetPasswordThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 277.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 229.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0, 0.5),
                              end: Alignment(1, 0.5),
                              colors: [
                                appTheme.deepPurple500.withOpacity(0.1),
                                theme.colorScheme.primary.withOpacity(0.1),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 24.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgFrameGray200,
                        height: 199.v,
                        width: 266.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    top: 36.v,
                  ),
                  child: Text(
                    "msg_did_you_forgot_password".tr,
                    style: CustomTextStyles.titleMediumGray80001_1,
                  ),
                ),
                Container(
                  width: 259.h,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    right: 75.h,
                  ),
                  child: Text(
                    "msg_pleae_enter_your2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeGray40002_1,
                  ),
                ),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 42.v,
                    width: 313.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomTextFormField(
                          width: 313.h,
                          controller: controller.phoneController,
                          hintText: "lbl_phone".tr,
                          hintStyle: theme.textTheme.labelLarge!,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                          alignment: Alignment.center,
                          validator: (value) {
                            if (!isValidPhone(value)) {
                              return "Please enter valid phone number";
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "msg_ex_1_212_325_107".tr,
                              style: CustomTextStyles.titleMediumGray40002,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 94.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_use_email_address".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeInterPrimary.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
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
