import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/splash_screen/models/splash_model.dart';/// A controller class for the SplashScreen.
///
/// This class manages the state of the SplashScreen, including the
/// current splashModelObj
class SplashController extends GetxController {Rx<SplashModel> splashModelObj = SplashModel().obs;

@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.loginScreen,);}); } 
 }
