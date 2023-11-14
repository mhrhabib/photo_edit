import 'package:flutter/material.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/speech_to_text_screen/models/speech_to_text_model.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';
/// A controller class for the SpeechToTextScreen.
///
/// This class manages the state of the SpeechToTextScreen, including the
/// current speechToTextModelObj
class SpeechToTextController extends GetxController {
  Rx<SpeechToTextModel> speechToTextModelObj = SpeechToTextModel().obs;
  SpeechToText speechToText = SpeechToText();
  String text = "Hold the button and start speaking";
  bool isListening = false;

  
}
