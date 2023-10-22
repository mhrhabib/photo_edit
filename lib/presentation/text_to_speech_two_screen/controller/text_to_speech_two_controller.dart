import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/text_to_speech_two_screen/models/text_to_speech_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TextToSpeechTwoScreen.
///
/// This class manages the state of the TextToSpeechTwoScreen, including the
/// current textToSpeechTwoModelObj
class TextToSpeechTwoController extends GetxController {
  TextEditingController pasteyourtextheController = TextEditingController();

  Rx<TextToSpeechTwoModel> textToSpeechTwoModelObj = TextToSpeechTwoModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    pasteyourtextheController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in textToSpeechTwoModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    textToSpeechTwoModelObj.value.dropdownItemList.refresh();
  }
}
