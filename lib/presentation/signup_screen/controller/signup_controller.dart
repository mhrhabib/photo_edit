

import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/dashboard_screen/dashboard_screen.dart';
import 'package:photo_edit/presentation/signup_screen/models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/presentation/signup_screen/repository/signup_repository.dart';

/// A controller class for the SignupScreen.
///
/// This class manages the state of the SignupScreen, including the
/// current signupModelObj
class SignupController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  var genderController = "".obs;
  TextEditingController photoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  


  //Rx<SignupModel> signupModelObj = SignupModel().obs;

 // SelectionPopupModel? selectedDropDownValue;

  signUpFunction() async {
    var response = await SignUpRepo.signUp(
      email: emailController.text,
      password: passwordController.text,
      phone: phoneNumberController.text,
      gender: genderController.value,
      name: nameController.text,
      photo: photoController.text,
    
    );
    if (response.message == "User created successfully") {
      //Navigator.pushNamed(context, AppRoutes.dashboardScreen);
      Get.to(DashboardScreen());
      print("Signup successful");
    }
  }

  

  
  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    passwordController.dispose();
  }

  // onSelected(dynamic value) {
  //   for (var element in signupModelObj.value.dropdownItemList.value) {
  //     element.isSelected = false;
  //     if (element.id == value.id) {
  //       element.isSelected = true;
  //     }
  //   }
  //   signupModelObj.value.dropdownItemList.refresh();
  // }
}
