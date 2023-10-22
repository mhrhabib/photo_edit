import '../controller/text_to_speech_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TextToSpeechScreen.
///
/// This class ensures that the TextToSpeechController is created when the
/// TextToSpeechScreen is first loaded.
class TextToSpeechBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextToSpeechController());
  }
}
