import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/remove_background_one_screen/models/remove_background_one_model.dart';

/// A controller class for the RemoveBackgroundOneScreen.
///
/// This class manages the state of the RemoveBackgroundOneScreen, including the
/// current removeBackgroundOneModelObj
class RemoveBackgroundOneController extends GetxController {
  Rx<RemoveBackgroundOneModel> removeBackgroundOneModelObj =
      RemoveBackgroundOneModel().obs;
}
