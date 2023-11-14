import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/core/utils/validation_functions.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';
import 'package:photo_edit/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginController _loginController = Get.put(LoginController());

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
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topRight, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 417.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment(0, 0.5),
                                      end: Alignment(1, 0.5),
                                      colors: [
                                    theme.colorScheme.primary,
                                    appTheme.deepPurple500
                                  ])))),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse28,
                          height: 173.v,
                          width: 124.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 193.v)),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.all(23.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 7.v),
                                        child: Text("lbl_cell_number".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray40002)),
                                    //Cell Number
                                    CustomTextFormField(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        controller: _loginController
                                            .phoneNumberController,
                                        margin: EdgeInsets.only(left: 1.h),
                                        hintText: "+1 809 251 3295",
                                        textInputAction: TextInputAction.done,
                                        textInputType: TextInputType.text,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        // /obscureText: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 1.h)),
                                    Divider(
                                        color: appTheme.gray40002, indent: 1.h),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 23.v),
                                        child: Text("lbl_password".tr,
                                            style: CustomTextStyles
                                                .titleMediumGray40002)),

                                    //Password
                                    CustomTextFormField(
                                        textStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        controller:
                                            _loginController.passwordController,
                                        margin: EdgeInsets.only(left: 1.h),
                                        hintText: "lbl".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        obscureText: true,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 1.h)),
                                    SizedBox(height: 16.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("msg_forgot_password".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimary
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))),
                                    CustomElevatedButton(
                                        onTap: () async {
                                          await _loginController
                                              .loginFunction();
                                        },
                                        text: "lbl_login".tr,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 19.v)),
                                    SizedBox(height: 23.v),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, AppRoutes.signupScreen);
                                      },
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                              "msg_create_an_account".tr,
                                              style: CustomTextStyles
                                                  .labelLargePrimary
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 20.v),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 6.v, bottom: 5.v),
                                                  child: SizedBox(
                                                      width: 109.h,
                                                      child: Divider(
                                                          color: appTheme
                                                              .gray40003))),
                                              Text("lbl_or_login_with".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumInterGray40002),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 6.v, bottom: 5.v),
                                                  child: SizedBox(
                                                      width: 109.h,
                                                      child: Divider(
                                                          color: appTheme
                                                              .gray40003)))
                                            ])),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 65.h,
                                                top: 20.v,
                                                right: 65.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgFacebook,
                                                      height: 23.adaptSize,
                                                      width: 23.adaptSize,
                                                      onTap: () {
                                                        onTapImgFacebookone();
                                                      }),
                                                  Spacer(flex: 49),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGoogle1,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize),
                                                  Spacer(flex: 50),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTwitter1,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize)
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              height: 209.v,
                              width: 215.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse27,
                                        height: 209.v,
                                        width: 215.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 24.h,
                                                top: 39.v,
                                                right: 20.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text(
                                                          "lbl_welcome_back_to"
                                                              .tr,
                                                          style: CustomTextStyles
                                                              .titleMedium16)),
                                                  SizedBox(height: 4.v),
                                                  Text("lbl_dtaskly".tr,
                                                      style: theme.textTheme
                                                          .displaySmall)
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              width: 312.h,
                              margin: EdgeInsets.only(top: 141.v),
                              child: Text("msg_lorem_ipsum_is_simply".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                  style: theme.textTheme.labelMedium!
                                      .copyWith(height: 1.80))))
                    ])))));
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapImgFacebookone() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
