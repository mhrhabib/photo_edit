import '../stock_image_one_page/widgets/stock_image_one_item_widget.dart';
import 'controller/stock_image_one_controller.dart';
import 'models/stock_image_one_item_model.dart';
import 'models/stock_image_one_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

class StockImageOnePage extends StatelessWidget {
  StockImageOnePage({Key? key})
      : super(
          key: key,
        );

  StockImageOneController controller =
      Get.put(StockImageOneController(StockImageOneModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue50,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
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
                              itemCount: controller.stockImageOneModelObj.value
                                  .stockImageOneItemList.value.length,
                              itemBuilder: (context, index) {
                                StockImageOneItemModel model = controller
                                    .stockImageOneModelObj
                                    .value
                                    .stockImageOneItemList
                                    .value[index];
                                return StockImageOneItemWidget(
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
                                  top: 7.v,
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
                                        vertical: 9.v,
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
                                          SizedBox(height: 1.v),
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
                                        vertical: 9.v,
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
                                          SizedBox(height: 1.v),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
