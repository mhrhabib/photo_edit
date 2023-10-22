import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignupModel> signupModelObj = SignupModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    passwordController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signupModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    signupModelObj.value.dropdownItemList.refresh();
  }
}
