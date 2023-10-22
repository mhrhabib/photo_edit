import '../controller/add_background_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddBackgroundScreen.
///
/// This class ensures that the AddBackgroundController is created when the
/// AddBackgroundScreen is first loaded.
class AddBackgroundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddBackgroundController());
  }
}
