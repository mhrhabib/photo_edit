import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/photo_edit_screen/models/photo_edit_model.dart';

/// A controller class for the PhotoEditScreen.
///
/// This class manages the state of the PhotoEditScreen, including the
/// current photoEditModelObj
class PhotoEditController extends GetxController {
  Rx<PhotoEditModel> photoEditModelObj = PhotoEditModel().obs;
}
