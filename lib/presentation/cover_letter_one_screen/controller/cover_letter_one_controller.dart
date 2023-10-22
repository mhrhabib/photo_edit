import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/cover_letter_one_screen/models/cover_letter_one_model.dart';

/// A controller class for the CoverLetterOneScreen.
///
/// This class manages the state of the CoverLetterOneScreen, including the
/// current coverLetterOneModelObj
class CoverLetterOneController extends GetxController {
  Rx<CoverLetterOneModel> coverLetterOneModelObj = CoverLetterOneModel().obs;
}
