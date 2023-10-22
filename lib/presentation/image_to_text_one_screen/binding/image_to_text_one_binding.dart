import '../controller/image_to_text_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ImageToTextOneScreen.
///
/// This class ensures that the ImageToTextOneController is created when the
/// ImageToTextOneScreen is first loaded.
class ImageToTextOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImageToTextOneController());
  }
}
