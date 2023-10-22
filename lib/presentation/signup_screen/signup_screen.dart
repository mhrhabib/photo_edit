import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/core/utils/validation_functions.dart';
import 'package:photo_edit/widgets/custom_drop_down.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
  SignupScreen({Key? key})
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
                CustomElevatedButton(
                  height: 56.v,
                  text: "lbl_signup".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPrimaryToDeepPurpleDecoration,
                  buttonTextStyle: theme.textTheme.titleMedium!,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 115.h,
                    vertical: 22.v,
                  ),
                  decoration:
                      AppDecoration.gradientDeepPurpleToSecondaryContainer,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder65,
                    ),
                    child: Container(
                      height: 130.adaptSize,
                      width: 130.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder65,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse9,
                            height: 120.adaptSize,
                            width: 120.adaptSize,
                            radius: BorderRadius.circular(
                              60.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgSettings,
                            height: 23.v,
                            width: 28.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 10.v),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
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
                          controller: controller.nameController,
                          hintText: "lbl_name".tr,
                          alignment: Alignment.center,
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "msg_christian_thomas".tr,
                              style: CustomTextStyles.titleMediumGray80001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 14.v,
                  ),
                  child: Text(
                    "lbl_gender".tr,
                    style: CustomTextStyles.labelLargeGray40002_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 1.v,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgEye,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_male".tr,
                          style: CustomTextStyles.titleMediumGray80001,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgRefresh,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 24.h,
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_female".tr,
                          style: CustomTextStyles.titleMediumGray80001,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 16.v,
                  ),
                  child: Text(
                    "lbl_cell_number".tr,
                    style: CustomTextStyles.labelLargeGray40002_1,
                  ),
                ),
                SizedBox(height: 1.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 22.v,
                    width: 301.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomDropDown(
                          width: 301.h,
                          icon: Container(
                            margin: EdgeInsets.only(left: 30.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgVector,
                            ),
                          ),
                          hintText: "lbl_1_809_251_3295".tr,
                          hintStyle: CustomTextStyles.titleMediumGray80001,
                          alignment: Alignment.center,
                          items: controller
                              .signupModelObj.value.dropdownItemList!.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          },
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgFrame,
                          height: 16.v,
                          width: 24.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            right: 14.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Divider(
                      color: appTheme.gray40002,
                      indent: 24.h,
                      endIndent: 23.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 13.v,
                  ),
                  child: Text(
                    "lbl_email_address".tr,
                    style: CustomTextStyles.labelLargeGray40002_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "msg_example_gmail_com".tr,
                    style: CustomTextStyles.titleMediumGray80001,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Divider(
                      color: appTheme.gray40002,
                      indent: 24.h,
                      endIndent: 23.h,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 44.v,
                    width: 312.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "lbl_password".tr,
                            style: CustomTextStyles.labelLargeGray40002_1,
                          ),
                        ),
                        CustomTextFormField(
                          width: 312.h,
                          controller: controller.passwordController,
                          hintText: "lbl".tr,
                          hintStyle: CustomTextStyles.titleMediumInterGray80001,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          alignment: Alignment.bottomCenter,
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "Please enter valid password";
                            }
                            return null;
                          },
                          obscureText: true,
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
          text: "lbl_create_account".tr,
          margin: EdgeInsets.only(
            left: 24.h,
            right: 23.h,
            bottom: 25.v,
          ),
        ),
      ),
    );
  }
}
