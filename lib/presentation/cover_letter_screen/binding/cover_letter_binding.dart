import '../controller/cover_letter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CoverLetterScreen.
///
/// This class ensures that the CoverLetterController is created when the
/// CoverLetterScreen is first loaded.
class CoverLetterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoverLetterController());
  }
}
