import 'controller/forget_password_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/core/utils/validation_functions.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordTwoScreen extends GetWidget<ForgetPasswordTwoController> {
  ForgetPasswordTwoScreen({Key? key})
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
                Container(
                  height: 24.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                  ),
                ),
                SizedBox(
                  height: 258.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFramePrimarycontainer,
                        height: 242.v,
                        width: 314.h,
                        alignment: Alignment.bottomCenter,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    top: 29.v,
                  ),
                  child: Text(
                    "msg_enter_a_new_password".tr,
                    style: CustomTextStyles.titleMediumGray80001_1,
                  ),
                ),
                Container(
                  width: 285.h,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    top: 2.v,
                    right: 49.h,
                  ),
                  child: Text(
                    "msg_giver_strong_password".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.labelLargeGray40002_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    top: 22.v,
                  ),
                  child: Text(
                    "lbl_new_password".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomTextFormField(
                  controller: controller.newpasswordController,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    top: 4.v,
                    right: 26.h,
                  ),
                  hintText: "lbl".tr,
                  textInputType: TextInputType.visiblePassword,
                  alignment: Alignment.center,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "Please enter valid password";
                    }
                    return null;
                  },
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
                ),
                SizedBox(height: 23.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 42.v,
                    width: 312.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomTextFormField(
                          width: 312.h,
                          controller: controller.confirmpasswordController,
                          hintText: "msg_confirm_password".tr,
                          hintStyle: theme.textTheme.labelLarge!,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          alignment: Alignment.center,
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          obscureText: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 1.h),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.labelLargeGray40002_1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_submit".tr,
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
