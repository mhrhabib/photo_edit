import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/settings_screen/models/settings_model.dart';/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

SelectionPopupModel? selectedDropDownValue4;

SelectionPopupModel? selectedDropDownValue5;

SelectionPopupModel? selectedDropDownValue6;

onSelected(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList3.refresh(); } 
onSelected4(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList4.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList4.refresh(); } 
onSelected5(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList5.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList5.refresh(); } 
onSelected6(dynamic value) { for (var element in settingsModelObj.value.dropdownItemList6.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} settingsModelObj.value.dropdownItemList6.refresh(); } 
 }
