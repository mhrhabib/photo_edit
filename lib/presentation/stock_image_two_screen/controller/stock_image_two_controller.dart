import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/stock_image_two_screen/models/stock_image_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the StockImageTwoScreen.
///
/// This class manages the state of the StockImageTwoScreen, including the
/// current stockImageTwoModelObj
class StockImageTwoController extends GetxController {TextEditingController freeController = TextEditingController();

Rx<StockImageTwoModel> stockImageTwoModelObj = StockImageTwoModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); freeController.dispose(); } 
onSelected(dynamic value) { for (var element in stockImageTwoModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} stockImageTwoModelObj.value.dropdownItemList.refresh(); } 
 }
