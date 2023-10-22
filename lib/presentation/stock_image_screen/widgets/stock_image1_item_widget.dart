import '../controller/stock_image_controller.dart';
import '../models/stock_image1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

// ignore: must_be_immutable
class StockImage1ItemWidget extends StatelessWidget {
  StockImage1ItemWidget(
    this.stockImage1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StockImage1ItemModel stockImage1ItemModelObj;

  var controller = Get.find<StockImageController>();

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
