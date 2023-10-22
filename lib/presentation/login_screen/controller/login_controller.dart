import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

@override void onClose() { super.onClose(); passwordController.dispose(); } 
 }
