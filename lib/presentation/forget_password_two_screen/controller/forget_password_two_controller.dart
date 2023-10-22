import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/forget_password_two_screen/models/forget_password_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgetPasswordTwoScreen.
///
/// This class manages the state of the ForgetPasswordTwoScreen, including the
/// current forgetPasswordTwoModelObj
class ForgetPasswordTwoController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ForgetPasswordTwoModel> forgetPasswordTwoModelObj =
      ForgetPasswordTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }
}
