import '../controller/photo_edit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PhotoEditScreen.
///
/// This class ensures that the PhotoEditController is created when the
/// PhotoEditScreen is first loaded.
class PhotoEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhotoEditController());
  }
}
