import '../controller/speech_to_text_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SpeechToTextScreen.
///
/// This class ensures that the SpeechToTextController is created when the
/// SpeechToTextScreen is first loaded.
class SpeechToTextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpeechToTextController());
  }
}
