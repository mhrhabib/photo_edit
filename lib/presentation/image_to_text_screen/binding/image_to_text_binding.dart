import '../controller/image_to_text_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageToTextScreen.
///
/// This class ensures that the ImageToTextController is created when the
/// ImageToTextScreen is first loaded.
class ImageToTextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageToTextController());
  }
}
