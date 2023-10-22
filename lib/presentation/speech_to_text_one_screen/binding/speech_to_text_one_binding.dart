import '../controller/speech_to_text_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpeechToTextOneScreen.
///
/// This class ensures that the SpeechToTextOneController is created when the
/// SpeechToTextOneScreen is first loaded.
class SpeechToTextOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpeechToTextOneController());
  }
}
