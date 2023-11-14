import 'dart:io';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:photo_edit/presentation/signup_screen/signup_custom_widgets.dart';

import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/core/utils/validation_functions.dart';
import 'package:photo_edit/widgets/custom_drop_down.dart';
import 'package:photo_edit/widgets/custom_elevated_button.dart';
import 'package:photo_edit/widgets/custom_text_form_field.dart';
import 'package:image_picker/image_picker.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatefulWidget {
  SignupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupController _signupController = Get.put(SignupController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int _radioGroupValue = 1;
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  

  fromGallary() async {
    image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override

  
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "lbl_signup".tr,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMedium16,
          ),
        ),
        
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // this is image section
                  Container(
                    width: double.infinity,
                    decoration:
                        AppDecoration.gradientDeepPurpleToSecondaryContainer,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 40.h,
                        ),
                        Container(
                          width: 130.v,
                          height: 130.v,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                          margin: EdgeInsets.only(
                            top: 24.h,
                            bottom: 24.h,
                          ),
                          padding: EdgeInsets.all(5),
                          child: SizedBox(
                            width: 120.v,
                            height: 120.h,
                            child: image == null
                                ? Image.asset(
                                    ImageConstant.imgEllipse9,
                                  )
                                : ClipOval(
                                    child: Image.file(
                                      File(
                                        image!.path,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            fromGallary();
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 90.h,
                              left: 80.v,
                            ),
                            child: SizedBox(
                              width: 29.v,
                              height: 24.h,
                              child:
                                  SvgPicture.asset(ImageConstant.imgSettings),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //image section end here

                  SizedBox(height: 15.v),

                  
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 44.v,
                      width: 312.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "lbl_name".tr,
                              style: CustomTextStyles.labelLargeGray40002_1,
                            ),
                          ),
                          //Password
                          CustomTextFormField(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),

                              controller: _signupController.nameController,
                              margin: EdgeInsets.only(left: 1.h),
                              hintText: "+1 809 251 3295",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.text,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 1.h)),
                        ],
                      ),
                    ),
                  ),

                  ///Radio button//
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 14.v,
                    ),
                    child: Text(
                      "lbl_gender".tr,
                      style: CustomTextStyles.labelLargeGray40002_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.v),
                    child: Row(
                      
                      children: <Widget>[
                        Radio(
                          
                          value: 1,
                          groupValue: _radioGroupValue,
                          onChanged: (int? value) {
                            setState(() {
                              _radioGroupValue = value!;
                              _signupController.genderController.value = "male";
                              print(_signupController.genderController.value);
                              
                            });
                          },
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        // horizontalSpace(twentyPixelWidth(context)),
                        Radio(
                          value: 2,
                          groupValue: _radioGroupValue,
                          onChanged: (int? value) {
                            setState(() {
                              _radioGroupValue = value!;
                             _signupController.genderController.value = "female";
                             print(_signupController.genderController.value);
                            });
                          },
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                  ),

                  //Radio button ends here

                  //Phone textfield
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 44.v,
                      width: 312.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "lbl_cell_number".tr,
                              style: CustomTextStyles.labelLargeGray40002_1,
                            ),
                          ),
                          //Password
                          CustomTextFormField(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              controller:
                                  _signupController.phoneNumberController,
                              margin: EdgeInsets.only(left: 1.h),
                              hintText: "+1 809 251 3295",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.text,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 1.h)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  //Email textfield
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 44.v,
                      width: 312.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "lbl_email_address".tr,
                              style: CustomTextStyles.labelLargeGray40002_1,
                            ),
                          ),
                          CustomTextFormField(
                              textStyle: TextStyle(
                                color: Colors.black,
                              ),
                              controller: _signupController.emailController,
                              margin: EdgeInsets.only(left: 1.h),
                              hintText: "+1 809 251 3295",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              ),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.text,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 1.h)),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15.v),
                  //Password
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 44.v,
                      width: 312.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "lbl_password".tr,
                              style: CustomTextStyles.labelLargeGray40002_1,
                            ),
                          ),
                          //Password
                          CustomTextFormField(
                              textStyle: TextStyle(
                                color: Colors.black54,
                              ),
                              controller: _signupController.passwordController,
                              margin: EdgeInsets.only(left: 1.h),
                              hintText: "lbl".tr,
                              hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              obscureText: true,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 1.h)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          onTap: () async{
            await _signupController.signUpFunction();
          },
          text: "lbl_create_account".tr,
          margin: EdgeInsets.only(
            left: 24.h,
            right: 23.h,
            bottom: 25.v,
          ),
        ),
      ),
    );
  }
}
