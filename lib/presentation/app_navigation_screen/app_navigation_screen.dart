import 'controller/app_navigation_controller.dart';import 'package:flutter/material.dart';import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/crop_image_dialog/crop_image_dialog.dart';import 'package:photo_edit/presentation/crop_image_dialog/controller/crop_image_controller.dart';class AppNavigationScreen extends GetWidget<AppNavigationController> {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.onPrimary.withOpacity(1), body: SizedBox(width: 375.h, child: Column(children: [Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_app_navigation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_check_your_app_s".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray400, fontSize: 16.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.black900)])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [GestureDetector(onTap: () {onTapSplashScreen();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_splash_screen".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapLogin();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_login".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSignup();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_signup".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapForgetPassword();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_forget_password".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapForgetPasswordThree();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_forget_password".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapForgetPasswordOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_forget_password2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapForgetPasswordTwo();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_forget_password3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboarding();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingTwo();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingThree();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_onboarding_three".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingFour();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding_four".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapOnboardingFive();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding_five".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapDashboard();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_dashboard".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSpeechtotext();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_speech_to_text3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSpeechtotextOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_speech_to_text_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapRemoveBackgroundTwo();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_remove_background2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapRemoveBackground();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_remove_background".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapRemoveBackgroundOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_remove_background3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapPhotoEdit();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_photo_edit".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapCropImage();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_crop_image".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapAddBGSolidColor();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_add_bg_solid_color".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapAddBackground();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_add_background".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapFilter();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_filter".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapStockImage();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_stock_image2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapStockImageOneTabContainer();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_stock_image_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapStockImageTwo();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_stock_image_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapAdjustOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_adjust_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapAdjust();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_adjust".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapImagetotext();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_image_to_text2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapImagetotextOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_image_to_text_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapCoverLetterOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_cover_letter_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapCoverLetter();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_cover_letter".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapTextToSpeechTwo();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_text_to_speech_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapTextToSpeech();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_text_to_speech3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapTextToSpeechOne();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_text_to_speech_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapSettings();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_settings".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapAppDrawer();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_app_drawer".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)]))), GestureDetector(onTap: () {onTapProfile();}, child: Container(decoration: AppDecoration.fillOnPrimary, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_profile".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray400)])))]))))])))); } 
/// Navigates to the splashScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the splashScreen.
onTapSplashScreen() { Get.toNamed(AppRoutes.splashScreen, ); } 
/// Navigates to the loginScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the loginScreen.
onTapLogin() { Get.toNamed(AppRoutes.loginScreen, ); } 
/// Navigates to the signupScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signupScreen.
onTapSignup() { Get.toNamed(AppRoutes.signupScreen, ); } 
/// Navigates to the forgetPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgetPasswordScreen.
onTapForgetPassword() { Get.toNamed(AppRoutes.forgetPasswordScreen, ); } 
/// Navigates to the forgetPasswordThreeScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgetPasswordThreeScreen.
onTapForgetPasswordThree() { Get.toNamed(AppRoutes.forgetPasswordThreeScreen, ); } 
/// Navigates to the forgetPasswordOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgetPasswordOneScreen.
onTapForgetPasswordOne() { Get.toNamed(AppRoutes.forgetPasswordOneScreen, ); } 
/// Navigates to the forgetPasswordTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgetPasswordTwoScreen.
onTapForgetPasswordTwo() { Get.toNamed(AppRoutes.forgetPasswordTwoScreen, ); } 
/// Navigates to the onboardingOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingOneScreen.
onTapOnboardingOne() { Get.toNamed(AppRoutes.onboardingOneScreen, ); } 
/// Navigates to the onboardingScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingScreen.
onTapOnboarding() { Get.toNamed(AppRoutes.onboardingScreen, ); } 
/// Navigates to the onboardingTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingTwoScreen.
onTapOnboardingTwo() { Get.toNamed(AppRoutes.onboardingTwoScreen, ); } 
/// Navigates to the onboardingThreeScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingThreeScreen.
onTapOnboardingThree() { Get.toNamed(AppRoutes.onboardingThreeScreen, ); } 
/// Navigates to the onboardingFourScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingFourScreen.
onTapOnboardingFour() { Get.toNamed(AppRoutes.onboardingFourScreen, ); } 
/// Navigates to the onboardingFiveScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingFiveScreen.
onTapOnboardingFive() { Get.toNamed(AppRoutes.onboardingFiveScreen, ); } 
/// Navigates to the dashboardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the dashboardScreen.
onTapDashboard() { Get.toNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the speechToTextScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the speechToTextScreen.
onTapSpeechtotext() { Get.toNamed(AppRoutes.speechToTextScreen, ); } 
/// Navigates to the speechToTextOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the speechToTextOneScreen.
onTapSpeechtotextOne() { Get.toNamed(AppRoutes.speechToTextOneScreen, ); } 
/// Navigates to the removeBackgroundTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the removeBackgroundTwoScreen.
onTapRemoveBackgroundTwo() { Get.toNamed(AppRoutes.removeBackgroundTwoScreen, ); } 
/// Navigates to the removeBackgroundScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the removeBackgroundScreen.
onTapRemoveBackground() { Get.toNamed(AppRoutes.removeBackgroundScreen, ); } 
/// Navigates to the removeBackgroundOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the removeBackgroundOneScreen.
onTapRemoveBackgroundOne() { Get.toNamed(AppRoutes.removeBackgroundOneScreen, ); } 
/// Navigates to the photoEditScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the photoEditScreen.
onTapPhotoEdit() { Get.toNamed(AppRoutes.photoEditScreen, ); } 


/// Displays a dialog with the [CropImageDialog] content.
///
/// The [CropImageDialog] widget is created with a new 
/// instance of the [CropImageController],
/// which is obtained using the Get.put() method.
onTapCropImage() { Get.dialog(AlertDialog(backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0), content:CropImageDialog(Get.put(CropImageController(),),),)); } 
/// Navigates to the addBgSolidColorScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addBgSolidColorScreen.
onTapAddBGSolidColor() { Get.toNamed(AppRoutes.addBgSolidColorScreen, ); } 
/// Navigates to the addBackgroundScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addBackgroundScreen.
onTapAddBackground() { Get.toNamed(AppRoutes.addBackgroundScreen, ); } 
/// Navigates to the filterScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the filterScreen.
onTapFilter() { Get.toNamed(AppRoutes.filterScreen, ); } 
/// Navigates to the stockImageScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the stockImageScreen.
onTapStockImage() { Get.toNamed(AppRoutes.stockImageScreen, ); } 
/// Navigates to the stockImageOneTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the stockImageOneTabContainerScreen.
onTapStockImageOneTabContainer() { Get.toNamed(AppRoutes.stockImageOneTabContainerScreen, ); } 
/// Navigates to the stockImageTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the stockImageTwoScreen.
onTapStockImageTwo() { Get.toNamed(AppRoutes.stockImageTwoScreen, ); } 
/// Navigates to the adjustOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the adjustOneScreen.
onTapAdjustOne() { Get.toNamed(AppRoutes.adjustOneScreen, ); } 
/// Navigates to the adjustScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the adjustScreen.
onTapAdjust() { Get.toNamed(AppRoutes.adjustScreen, ); } 
/// Navigates to the imageToTextScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the imageToTextScreen.
onTapImagetotext() { Get.toNamed(AppRoutes.imageToTextScreen, ); } 
/// Navigates to the imageToTextOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the imageToTextOneScreen.
onTapImagetotextOne() { Get.toNamed(AppRoutes.imageToTextOneScreen, ); } 
/// Navigates to the coverLetterOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the coverLetterOneScreen.
onTapCoverLetterOne() { Get.toNamed(AppRoutes.coverLetterOneScreen, ); } 
/// Navigates to the coverLetterScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the coverLetterScreen.
onTapCoverLetter() { Get.toNamed(AppRoutes.coverLetterScreen, ); } 
/// Navigates to the textToSpeechTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the textToSpeechTwoScreen.
onTapTextToSpeechTwo() { Get.toNamed(AppRoutes.textToSpeechTwoScreen, ); } 
/// Navigates to the textToSpeechScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the textToSpeechScreen.
onTapTextToSpeech() { Get.toNamed(AppRoutes.textToSpeechScreen, ); } 
/// Navigates to the textToSpeechOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the textToSpeechOneScreen.
onTapTextToSpeechOne() { Get.toNamed(AppRoutes.textToSpeechOneScreen, ); } 
/// Navigates to the settingsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the settingsScreen.
onTapSettings() { Get.toNamed(AppRoutes.settingsScreen, ); } 
/// Navigates to the appDrawerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appDrawerScreen.
onTapAppDrawer() { Get.toNamed(AppRoutes.appDrawerScreen, ); } 
/// Navigates to the profileScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the profileScreen.
onTapProfile() { Get.toNamed(AppRoutes.profileScreen, ); } 
 }
