import '../controller/remove_background_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RemoveBackgroundTwoScreen.
///
/// This class ensures that the RemoveBackgroundTwoController is created when the
/// RemoveBackgroundTwoScreen is first loaded.
class RemoveBackgroundTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoveBackgroundTwoController());
  }
}
