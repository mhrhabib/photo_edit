import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/speech_to_text_screen/models/speech_to_text_model.dart';

/// A controller class for the SpeechToTextScreen.
///
/// This class manages the state of the SpeechToTextScreen, including the
/// current speechToTextModelObj
class SpeechToTextController extends GetxController {
  Rx<SpeechToTextModel> speechToTextModelObj = SpeechToTextModel().obs;
}
