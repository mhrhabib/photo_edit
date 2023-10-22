import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/forget_password_one_screen/models/forget_password_one_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgetPasswordOneScreen.
///
/// This class manages the state of the ForgetPasswordOneScreen, including the
/// current forgetPasswordOneModelObj
class ForgetPasswordOneController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<ForgetPasswordOneModel> forgetPasswordOneModelObj =
      ForgetPasswordOneModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
