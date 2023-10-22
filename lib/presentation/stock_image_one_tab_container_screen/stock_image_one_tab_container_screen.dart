import 'controller/stock_image_one_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/stock_image_one_page/stock_image_one_page.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';
import 'package:photo_edit/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class StockImageOneTabContainerScreen
    extends GetWidget<StockImageOneTabContainerController> {
  const StockImageOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
                    items: controller.stockImageOneTabContainerModelObj.value
                        .dropdownItemList!.value,
                    borderDecoration: DropDownStyleHelper.fillOnPrimary,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 16.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 23.v,
                        width: 327.h,
                        child: TabBar(
                          controller: controller.tabviewController,
                          labelPadding: EdgeInsets.zero,
                          tabs: [
                            Tab(
                              child: Text(
                                "lbl_all".tr,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_abstract".tr,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_natural".tr,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_3d".tr,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_technology".tr,
                              ),
                            ),
                            Tab(
                              child: Text(
                                "lbl_potrait".tr,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          "lbl_animal".tr,
                          style: CustomTextStyles.labelMediumGray80001,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 435.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    StockImageOnePage(),
                    StockImageOnePage(),
                    StockImageOnePage(),
                    StockImageOnePage(),
                    StockImageOnePage(),
                    StockImageOnePage(),
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
