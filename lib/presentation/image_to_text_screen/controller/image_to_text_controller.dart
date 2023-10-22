import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/image_to_text_screen/models/image_to_text_model.dart';/// A controller class for the ImageToTextScreen.
///
/// This class manages the state of the ImageToTextScreen, including the
/// current imageToTextModelObj
class ImageToTextController extends GetxController {Rx<ImageToTextModel> imageToTextModelObj = ImageToTextModel().obs;

 }
