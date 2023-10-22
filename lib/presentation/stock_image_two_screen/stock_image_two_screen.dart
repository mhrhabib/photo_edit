import '../stock_image_two_screen/widgets/stock_image_two_item_widget.dart';
import 'controller/stock_image_two_controller.dart';
import 'models/stock_image_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_drop_down.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class StockImageTwoScreen extends GetWidget<StockImageTwoController> {
  const StockImageTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.blue50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 19.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              SizedBox(height: 13.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 56.h,
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgFilteralt,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_filter".tr,
                            style: CustomTextStyles.labelMediumSemiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomDropDown(
                    width: 81.h,
                    icon: Container(
                      margin: EdgeInsets.only(left: 30.h),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdropdown,
                      ),
                    ),
                    hintText: "lbl_all".tr,
                    items: controller
                        .stockImageTwoModelObj.value.dropdownItemList!.value,
                    borderDecoration: DropDownStyleHelper.fillOnPrimaryLR6,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 24.h),
                  child: IntrinsicWidth(
                    child: SizedBox(
                      height: 50.v,
                      width: 336.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 11.v),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 3.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Text(
                                      "lbl_all".tr,
                                      style:
                                          CustomTextStyles.labelMediumGray80001,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 3.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Text(
                                      "lbl_abstract".tr,
                                      style:
                                          CustomTextStyles.labelMediumGray80001,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 3.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Text(
                                      "lbl_natural".tr,
                                      style:
                                          CustomTextStyles.labelMediumGray80001,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 2.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 1.v),
                                        Text(
                                          "lbl_3d".tr,
                                          style: CustomTextStyles
                                              .labelMediumGray80001,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 1.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 3.v),
                                        Text(
                                          "lbl_technology".tr,
                                          style: CustomTextStyles
                                              .labelMediumGray80001,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 3.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Text(
                                      "lbl_potrait".tr,
                                      style:
                                          CustomTextStyles.labelMediumGray80001,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 4.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineBlack900.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Text(
                                      "lbl_animal".tr,
                                      style:
                                          CustomTextStyles.labelMediumGray80001,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 111.h),
                              padding: EdgeInsets.symmetric(horizontal: 6.h),
                              decoration:
                                  AppDecoration.outlineBlack9001.copyWith(
                                borderRadius: BorderRadiusStyle.customBorderBL6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextFormField(
                                    width: 67.h,
                                    controller: controller.freeController,
                                    margin: EdgeInsets.only(left: 2.h),
                                    hintText: "lbl_free".tr,
                                    hintStyle:
                                        CustomTextStyles.labelMediumGray40002,
                                    textInputAction: TextInputAction.done,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 2.h,
                                      top: 2.v,
                                      bottom: 10.v,
                                    ),
                                    child: Text(
                                      "lbl_premium".tr,
                                      style:
                                          CustomTextStyles.labelMediumGray40002,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                height: 533.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 387.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimary.withOpacity(1),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 24.h,
                          top: 14.v,
                          right: 24.h,
                        ),
                        child: Obx(
                          () => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 100.v,
                              crossAxisCount: 3,
                              mainAxisSpacing: 8.h,
                              crossAxisSpacing: 8.h,
                            ),
                            physics: BouncingScrollPhysics(),
                            itemCount: controller.stockImageTwoModelObj.value
                                .stockImageTwoItemList.value.length,
                            itemBuilder: (context, index) {
                              StockImageTwoItemModel model = controller
                                  .stockImageTwoModelObj
                                  .value
                                  .stockImageTwoItemList
                                  .value[index];
                              return StockImageTwoItemWidget(
                                model,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 40.v),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 160.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillGray90001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL10,
                              ),
                              child: Container(
                                height: 3.v,
                                width: 39.h,
                                decoration: BoxDecoration(
                                  color: appTheme.gray80002,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 24.h,
                                top: 6.v,
                                bottom: 17.v,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 9.h,
                                      vertical: 10.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: SizedBox(
                                      width: 29.h,
                                      child: Text(
                                        "lbl_solid_color".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.h,
                                      vertical: 8.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlineOnPrimary.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        SizedBox(
                                          width: 38.h,
                                          child: Text(
                                            "lbl_gallery_image".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 7.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: AppDecoration
                                        .gradientPrimaryToDeepPurple
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 2.v),
                                        SizedBox(
                                          width: 33.h,
                                          child: Text(
                                            "lbl_stock_image".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: theme.textTheme.labelMedium,
                                          ),
                                        ),
                                      ],
                                    ),
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
