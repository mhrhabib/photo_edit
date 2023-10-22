import '../controller/remove_background_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RemoveBackgroundScreen.
///
/// This class ensures that the RemoveBackgroundController is created when the
/// RemoveBackgroundScreen is first loaded.
class RemoveBackgroundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoveBackgroundController());
  }
}
