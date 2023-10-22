import '../controller/text_to_speech_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TextToSpeechTwoScreen.
///
/// This class ensures that the TextToSpeechTwoController is created when the
/// TextToSpeechTwoScreen is first loaded.
class TextToSpeechTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextToSpeechTwoController());
  }
}
