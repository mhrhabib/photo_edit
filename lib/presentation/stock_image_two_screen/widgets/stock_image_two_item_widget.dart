import '../controller/stock_image_two_controller.dart';
import '../models/stock_image_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

// ignore: must_be_immutable
class StockImageTwoItemWidget extends StatelessWidget {
  StockImageTwoItemWidget(
    this.stockImageTwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StockImageTwoItemModel stockImageTwoItemModelObj;

  var controller = Get.find<StockImageTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle33,
        height: 99.adaptSize,
        width: 99.adaptSize,
      ),
    );
  }
}
