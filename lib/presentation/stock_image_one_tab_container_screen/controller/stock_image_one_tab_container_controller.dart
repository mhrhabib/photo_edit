import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/stock_image_one_tab_container_screen/models/stock_image_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StockImageOneTabContainerScreen.
///
/// This class manages the state of the StockImageOneTabContainerScreen, including the
/// current stockImageOneTabContainerModelObj
class StockImageOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<StockImageOneTabContainerModel> stockImageOneTabContainerModelObj =
      StockImageOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 6));

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in stockImageOneTabContainerModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    stockImageOneTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
