import '../filter_screen/widgets/listview_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/listview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends GetWidget<FilterController> {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 16.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 249.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage3246x360,
                        height: 246.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 248.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.blue600,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle23removebgpreview,
                        height: 246.v,
                        width: 301.h,
                        radius: BorderRadius.circular(
                          6.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 122.v,
                  width: 384.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 160.h,
                                  vertical: 8.v,
                                ),
                                decoration:
                                    AppDecoration.fillGray90001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL16,
                                ),
                                child: Container(
                                  height: 4.v,
                                  width: 39.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray800,
                                    borderRadius: BorderRadius.circular(
                                      2.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 70.v),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 23.h,
                                  vertical: 7.v,
                                ),
                                decoration:
                                    AppDecoration.fillOnPrimaryContainer,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        "lbl_amount".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                    Container(
                                      height: 8.v,
                                      width: 237.h,
                                      margin: EdgeInsets.only(
                                        left: 11.h,
                                        top: 4.v,
                                        bottom: 4.v,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 3.v),
                                              child: SizedBox(
                                                width: 237.h,
                                                child: Divider(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(1),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              decoration: BoxDecoration(
                                                color: appTheme.blueGray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  4.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.h,
                                        bottom: 1.v,
                                      ),
                                      child: Text(
                                        "lbl_0".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 26.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 6.v),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 9.v,
                                ),
                                decoration:
                                    AppDecoration.outlineOnPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: SizedBox(
                                  width: 27.adaptSize,
                                  child: Text(
                                    "lbl_filter_1".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        theme.textTheme.labelMedium!.copyWith(
                                      height: 1.18,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  top: 6.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 9.v,
                                ),
                                decoration:
                                    AppDecoration.outlineOnPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: SizedBox(
                                  width: 27.adaptSize,
                                  child: Text(
                                    "lbl_filter_2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        theme.textTheme.labelMedium!.copyWith(
                                      height: 1.18,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  top: 6.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 9.v,
                                ),
                                decoration: AppDecoration
                                    .gradientPrimaryToDeepPurple
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: SizedBox(
                                  width: 27.adaptSize,
                                  child: Text(
                                    "lbl_filter_3".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        theme.textTheme.labelMedium!.copyWith(
                                      height: 1.18,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  top: 6.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 9.v,
                                ),
                                decoration:
                                    AppDecoration.outlineOnPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: SizedBox(
                                  width: 27.adaptSize,
                                  child: Text(
                                    "lbl_filter_4".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        theme.textTheme.labelMedium!.copyWith(
                                      height: 1.18,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  height: 54.v,
                                  child: Obx(
                                    () => ListView.separated(
                                      padding: EdgeInsets.only(left: 4.h),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (
                                        context,
                                        index,
                                      ) {
                                        return SizedBox(
                                          width: 4.h,
                                        );
                                      },
                                      itemCount: controller.filterModelObj.value
                                          .listviewItemList.value.length,
                                      itemBuilder: (context, index) {
                                        ListviewItemModel model = controller
                                            .filterModelObj
                                            .value
                                            .listviewItemList
                                            .value[index];
                                        return ListviewItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
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
