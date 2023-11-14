import 'package:get_storage/get_storage.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:photo_edit/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/presentation/login_screen/repository/login_repository.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  GetStorage storage = GetStorage();

  get nameController => null;

  //Rx<Login> loginModelObj = Login().obs;

  loginFunction() async {
    var response = await LoginRepo.login(
        phone: phoneNumberController.text,
        password: passwordController.text
        );
    if (response.status == true) {
      storage.write("token", response.token);
      
      
      // print(storage.read('token'));
      // storage.write('uName', userData.user!.name ?? '');
      // storage.write('email', email.value);
      // storage.write('password', password.value);
      // var a = storage.read('token');
      // pLog(a);
      // log(storage.read('email'));
      // log(storage.read('password'));
      // GetStorage().write('userId', userData.user!.id);
      // Get.offAllNamed(Routes.mainPageView);



      Get.to(DashboardScreen());
      print("Login successful");
    }
  }

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }
}
