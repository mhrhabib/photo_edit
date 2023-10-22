import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/app_navigation_screen/models/app_navigation_model.dart';/// A controller class for the AppNavigationScreen.
///
/// This class manages the state of the AppNavigationScreen, including the
/// current appNavigationModelObj
class AppNavigationController extends GetxController {Rx<AppNavigationModel> appNavigationModelObj = AppNavigationModel().obs;

 }