import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/crop_image_dialog/models/crop_image_model.dart';

/// A controller class for the CropImageDialog.
///
/// This class manages the state of the CropImageDialog, including the
/// current cropImageModelObj
class CropImageController extends GetxController {
  Rx<CropImageModel> cropImageModelObj = CropImageModel().obs;
}
