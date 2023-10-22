import '../controller/cover_letter_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CoverLetterOneScreen.
///
/// This class ensures that the CoverLetterOneController is created when the
/// CoverLetterOneScreen is first loaded.
class CoverLetterOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CoverLetterOneController());
  }
}
