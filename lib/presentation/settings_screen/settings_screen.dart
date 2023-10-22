import 'controller/settings_controller.dart';import 'package:flutter/material.dart';import 'package:outline_gradient_button/outline_gradient_button.dart';import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/widgets/app_bar/appbar_image.dart';import 'package:photo_edit/widgets/app_bar/appbar_title.dart';import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';import 'package:photo_edit/widgets/custom_bottom_bar.dart';import 'package:photo_edit/widgets/custom_drop_down.dart';import 'package:photo_edit/widgets/custom_elevated_button.dart';import 'package:photo_edit/widgets/custom_outlined_button.dart';import 'package:photo_edit/widgets/custom_switch.dart';class SettingsScreen extends GetWidget<SettingsController> {const SettingsScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.deepPurple100, body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 19.v), decoration: AppDecoration.gradient, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomAppBar(height: 26.v, leadingWidth: 47.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleft, margin: EdgeInsets.only(left: 23.h, bottom: 2.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_settings".tr, margin: EdgeInsets.only(left: 2.h))), Padding(padding: EdgeInsets.only(left: 49.h, bottom: 28.v), child: Text("msg_change_your_settings".tr, style: CustomTextStyles.labelLargeOnPrimaryMedium))])), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.customBorderTL10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_general_settings".tr, style: CustomTextStyles.labelLargeGray40002), Padding(padding: EdgeInsets.only(top: 4.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 3.v), child: Text("lbl_app_language".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 89.h, icon: Container(margin: EdgeInsets.only(left: 8.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_english".tr, items: controller.settingsModelObj.value.dropdownItemList!.value, onChanged: (value) {controller.onSelected(value);})])), Padding(padding: EdgeInsets.only(top: 12.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: Text("msg_push_notifications".tr, style: theme.textTheme.labelLarge)), Obx(() => CustomSwitch(value: controller.isSelectedSwitch.value, onChange: (value) {controller.isSelectedSwitch.value = value;}))])), Padding(padding: EdgeInsets.only(top: 12.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: Text("lbl_dark_theme".tr, style: theme.textTheme.labelLarge)), Container(padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v), decoration: AppDecoration.fillOnPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.symmetric(vertical: 1.v), decoration: BoxDecoration(color: appTheme.gray40002, borderRadius: BorderRadius.circular(8.h))), Padding(padding: EdgeInsets.only(left: 14.h), child: Text("lbl_off".tr, style: CustomTextStyles.labelLargeGray40002Medium))]))])), SizedBox(height: 12.v), Divider(color: appTheme.gray40002), SizedBox(height: 12.v), Text("lbl_speech_to_text2".tr, style: CustomTextStyles.labelLargeGray40002), Padding(padding: EdgeInsets.only(top: 4.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 3.v), child: Text("lbl_language".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 89.h, icon: Container(margin: EdgeInsets.only(left: 8.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_english".tr, items: controller.settingsModelObj.value.dropdownItemList1!.value, onChanged: (value) {controller.onSelected1(value);})])), Padding(padding: EdgeInsets.only(top: 12.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: Text("lbl_font".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 73.h, icon: Container(margin: EdgeInsets.only(left: 8.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_arial".tr, items: controller.settingsModelObj.value.dropdownItemList2!.value, onChanged: (value) {controller.onSelected2(value);})])), Padding(padding: EdgeInsets.only(top: 12.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: Text("lbl_font_size".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 60.h, icon: Container(margin: EdgeInsets.only(left: 8.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_16".tr, items: controller.settingsModelObj.value.dropdownItemList3!.value, onChanged: (value) {controller.onSelected3(value);})])), SizedBox(height: 12.v), Divider(color: appTheme.gray40002), SizedBox(height: 12.v), Text("lbl_text_to_speech2".tr, style: CustomTextStyles.labelLargeGray40002), Padding(padding: EdgeInsets.only(top: 4.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 3.v), child: Text("lbl_speech_engine".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 114.h, icon: Container(margin: EdgeInsets.only(left: 8.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_google_tts".tr, items: controller.settingsModelObj.value.dropdownItemList4!.value, onChanged: (value) {controller.onSelected4(value);})])), Padding(padding: EdgeInsets.only(top: 12.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_language".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 114.h, icon: Container(margin: EdgeInsets.only(left: 8.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_us_english".tr, items: controller.settingsModelObj.value.dropdownItemList5!.value, onChanged: (value) {controller.onSelected5(value);})])), Padding(padding: EdgeInsets.only(top: 12.v, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: Text("lbl_voice_model".tr, style: theme.textTheme.labelLarge)), CustomDropDown(width: 101.h, icon: Container(margin: EdgeInsets.only(left: 9.h, right: 4.h), child: CustomImageView(svgPath: ImageConstant.imgArrowdropdownGray80001)), hintText: "lbl_female_1".tr, items: controller.settingsModelObj.value.dropdownItemList6!.value, onChanged: (value) {controller.onSelected6(value);})])), CustomElevatedButton(text: "lbl_save_settings".tr, margin: EdgeInsets.only(left: 25.h, top: 40.v, right: 24.h), buttonTextStyle: CustomTextStyles.labelLargeOnPrimary, alignment: Alignment.center), SizedBox(height: 24.v), Align(alignment: Alignment.center, child: OutlineGradientButton(padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v), strokeWidth: 1.h, gradient: LinearGradient(begin: Alignment(0, 0.5), end: Alignment(1, 0.5), colors: [theme.colorScheme.primary, appTheme.deepPurple500]), corners: Corners(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)), child: CustomOutlinedButton(width: 133.h, text: "lbl_log_out".tr, leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgPowersettingsnew, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outline, buttonTextStyle: CustomTextStyles.labelLargePrimary, alignment: Alignment.center))), SizedBox(height: 72.v)]))))])), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
 }