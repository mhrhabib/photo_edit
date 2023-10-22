import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/forget_password_three_screen/models/forget_password_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgetPasswordThreeScreen.
///
/// This class manages the state of the ForgetPasswordThreeScreen, including the
/// current forgetPasswordThreeModelObj
class ForgetPasswordThreeController extends GetxController {
  TextEditingController phoneController = TextEditingController();

  Rx<ForgetPasswordThreeModel> forgetPasswordThreeModelObj =
      ForgetPasswordThreeModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneController.dispose();
  }
}
