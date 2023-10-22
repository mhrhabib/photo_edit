import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/remove_background_two_screen/models/remove_background_two_model.dart';

/// A controller class for the RemoveBackgroundTwoScreen.
///
/// This class manages the state of the RemoveBackgroundTwoScreen, including the
/// current removeBackgroundTwoModelObj
class RemoveBackgroundTwoController extends GetxController {
  Rx<RemoveBackgroundTwoModel> removeBackgroundTwoModelObj =
      RemoveBackgroundTwoModel().obs;
}
