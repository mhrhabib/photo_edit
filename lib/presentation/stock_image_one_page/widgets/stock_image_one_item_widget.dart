import '../controller/stock_image_one_controller.dart';
import '../models/stock_image_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

// ignore: must_be_immutable
class StockImageOneItemWidget extends StatelessWidget {
  StockImageOneItemWidget(
    this.stockImageOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StockImageOneItemModel stockImageOneItemModelObj;

  var controller = Get.find<StockImageOneController>();

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
