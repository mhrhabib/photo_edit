import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/cover_letter_screen/models/cover_letter_model.dart';

/// A controller class for the CoverLetterScreen.
///
/// This class manages the state of the CoverLetterScreen, including the
/// current coverLetterModelObj
class CoverLetterController extends GetxController {
  Rx<CoverLetterModel> coverLetterModelObj = CoverLetterModel().obs;
}
