import '../controller/app_drawer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppDrawerScreen.
///
/// This class ensures that the AppDrawerController is created when the
/// AppDrawerScreen is first loaded.
class AppDrawerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppDrawerController());
  }
}
