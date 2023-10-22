import '../controller/filter_controller.dart';
import '../models/listview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';

// ignore: must_be_immutable
class ListviewItemWidget extends StatelessWidget {
  ListviewItemWidget(
    this.listviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListviewItemModel listviewItemModelObj;

  var controller = Get.find<FilterController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.v,
      width: 48.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 48.adaptSize,
              width: 48.adaptSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimary,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCrown1,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    listviewItemModelObj.filterText!.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelMedium!.copyWith(
                      height: 1.18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
