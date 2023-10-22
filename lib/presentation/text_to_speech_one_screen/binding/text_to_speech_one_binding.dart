import '../controller/text_to_speech_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TextToSpeechOneScreen.
///
/// This class ensures that the TextToSpeechOneController is created when the
/// TextToSpeechOneScreen is first loaded.
class TextToSpeechOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextToSpeechOneController());
  }
}
