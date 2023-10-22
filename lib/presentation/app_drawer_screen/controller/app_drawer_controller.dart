import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/app_drawer_screen/models/app_drawer_model.dart';/// A controller class for the AppDrawerScreen.
///
/// This class manages the state of the AppDrawerScreen, including the
/// current appDrawerModelObj
class AppDrawerController extends GetxController {Rx<AppDrawerModel> appDrawerModelObj = AppDrawerModel().obs;

 }
