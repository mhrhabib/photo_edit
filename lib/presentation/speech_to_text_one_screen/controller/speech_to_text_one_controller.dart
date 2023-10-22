import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/speech_to_text_one_screen/models/speech_to_text_one_model.dart';

/// A controller class for the SpeechToTextOneScreen.
///
/// This class manages the state of the SpeechToTextOneScreen, including the
/// current speechToTextOneModelObj
class SpeechToTextOneController extends GetxController {
  Rx<SpeechToTextOneModel> speechToTextOneModelObj = SpeechToTextOneModel().obs;
}
