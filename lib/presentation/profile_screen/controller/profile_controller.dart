import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/profile_screen/models/profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<ProfileModel> profileModelObj = ProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); nameController.dispose(); passwordController.dispose(); } 
onSelected(dynamic value) { for (var element in profileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} profileModelObj.value.dropdownItemList.refresh(); } 
 }
