import '../stock_image_screen/widgets/stock_image1_item_widget.dart';
import '../stock_image_screen/widgets/stock_image_item_widget.dart';
import 'controller/stock_image_controller.dart';
import 'models/stock_image1_item_model.dart';
import 'models/stock_image_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class StockImageScreen extends GetWidget<StockImageController> {
  const StockImageScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 19.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 35.v,
                  child: Obx(
                    () => ListView.separated(
                      padding: EdgeInsets.only(
                        left: 24.h,
                        top: 12.v,
                      ),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          width: 8.h,
                        );
                      },
                      itemCount: controller.stockImageModelObj.value
                          .stockImageItemList.value.length,
                      itemBuilder: (context, index) {
                        StockImageItemModel model = controller
                            .stockImageModelObj
                            .value
                            .stockImageItemList
                            .value[index];
                        return StockImageItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 537.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 405.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 9.v,
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
                              itemCount: controller.stockImageModelObj.value
                                  .stockImage1ItemList.value.length,
                              itemBuilder: (context, index) {
                                StockImage1ItemModel model = controller
                                    .stockImageModelObj
                                    .value
                                    .stockImage1ItemList
                                    .value[index];
                                return StockImage1ItemWidget(
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
                                decoration:
                                    AppDecoration.fillGray90001.copyWith(
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
                                      decoration: AppDecoration.outlineOnPrimary
                                          .copyWith(
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
                                      decoration: AppDecoration.outlineOnPrimary
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
                                            width: 38.h,
                                            child: Text(
                                              "lbl_gallery_image".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.labelMedium,
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
                                              style:
                                                  theme.textTheme.labelMedium,
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
