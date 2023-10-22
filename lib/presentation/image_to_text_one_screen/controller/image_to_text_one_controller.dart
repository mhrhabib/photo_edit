import 'package:photo_edit/core/app_export.dart';import 'package:photo_edit/presentation/image_to_text_one_screen/models/image_to_text_one_model.dart';/// A controller class for the ImageToTextOneScreen.
///
/// This class manages the state of the ImageToTextOneScreen, including the
/// current imageToTextOneModelObj
class ImageToTextOneController extends GetxController {Rx<ImageToTextOneModel> imageToTextOneModelObj = ImageToTextOneModel().obs;

 }
