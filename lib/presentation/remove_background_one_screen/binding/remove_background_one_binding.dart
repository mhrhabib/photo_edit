import '../controller/remove_background_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RemoveBackgroundOneScreen.
///
/// This class ensures that the RemoveBackgroundOneController is created when the
/// RemoveBackgroundOneScreen is first loaded.
class RemoveBackgroundOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RemoveBackgroundOneController());
  }
}
