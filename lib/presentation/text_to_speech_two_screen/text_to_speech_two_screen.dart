import 'controller/text_to_speech_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/app_bar/appbar_circleimage.dart';
import 'package:photo_edit/widgets/app_bar/appbar_image.dart';
import 'package:photo_edit/widgets/app_bar/appbar_title.dart';
import 'package:photo_edit/widgets/app_bar/custom_app_bar.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_drop_down.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_icon_button.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TextToSpeechTwoScreen extends GetWidget<TextToSpeechTwoController> {
  const TextToSpeechTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 16.v,
              bottom: 16.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_dtasky".tr,
          ),
          actions: [
            AppbarCircleimage(
              imagePath: ImageConstant.imgEllipse5,
              margin: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 8.v,
              ),
            ),
          ],
          styleType: Style.bgGradientnameprimarynamedeeppurple500,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              child: Text(
                                "msg_select_voice_model".tr,
                                style: CustomTextStyles.titleMediumGray80001,
                              ),
                            ),
                            CustomDropDown(
                              width: 153.h,
                              icon: Container(
                                margin:
                                    EdgeInsets.fromLTRB(19.h, 8.v, 8.h, 8.v),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    12.h,
                                  ),
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant.imgContrast,
                                ),
                              ),
                              margin: EdgeInsets.only(left: 16.h),
                              hintText: "lbl_us_female_1".tr,
                              hintStyle: CustomTextStyles.labelLargePrimary,
                              items: controller.textToSpeechTwoModelObj.value
                                  .dropdownItemList!.value,
                              contentPadding: EdgeInsets.only(
                                left: 17.h,
                                top: 10.v,
                                bottom: 10.v,
                              ),
                              borderDecoration:
                                  DropDownStyleHelper.outlineBlack,
                              onChanged: (value) {
                                controller.onSelected(value);
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 23.h,
                          vertical: 19.v,
                        ),
                        decoration:
                            AppDecoration.gradientDeeppurple500ToPrimary1,
                        child: Column(
                          children: [
                            SizedBox(height: 5.v),
                            CustomTextFormField(
                              controller: controller.pasteyourtextheController,
                              hintText: "msg_paste_your_text".tr,
                              hintStyle: CustomTextStyles.titleMediumGray40002,
                              textInputAction: TextInputAction.done,
                              maxLines: 16,
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineBlack,
                              filled: true,
                              fillColor:
                                  theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                            SizedBox(height: 19.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_save_as".tr,
                                    margin: EdgeInsets.symmetric(vertical: 8.v),
                                    rightIcon: Container(
                                      margin: EdgeInsets.only(left: 4.h),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgContrast,
                                      ),
                                    ),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientPrimaryToDeepPurpleTL20Decoration,
                                    buttonTextStyle:
                                        CustomTextStyles.labelLargeOnPrimary,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 57.adaptSize,
                                  width: 57.adaptSize,
                                  margin: EdgeInsets.only(left: 8.h),
                                  padding: EdgeInsets.all(9.h),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgPlayarrow,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
