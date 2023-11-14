import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/text_to_speech_screen/models/text_to_speech_model.dart';

/// A controller class for the TextToSpeechScreen.
///
/// This class manages the state of the TextToSpeechScreen, including the
/// current textToSpeechModelObj
class TextToSpeechController extends GetxController {
  Rx<TextToSpeechModel> textToSpeechModelObj = TextToSpeechModel().obs;

  Rx<bool> englishFemale = false.obs;

  Rx<bool> englishfemale = false.obs;

  Rx<bool> englishChild = false.obs;

  Rx<bool> frenchvalue = false.obs;

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textToSpeechController = TextEditingController();

  speak(String text) async {
    await flutterTts.setLanguage("en-us");
    await flutterTts.setPitch(1);// 0.5-1.5
    await flutterTts.speak(text);

  }


}
