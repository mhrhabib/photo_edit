import '../controller/stock_image_controller.dart';
import '../models/stock_image_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

// ignore: must_be_immutable
class StockImageItemWidget extends StatelessWidget {
  StockImageItemWidget(
    this.stockImageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StockImageItemModel stockImageItemModelObj;

  var controller = Get.find<StockImageController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 26.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Obx(
            () => Text(
              stockImageItemModelObj.frame!.value,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelMediumGray80001,
            ),
          ),
        ),
      ),
    );
  }
}
