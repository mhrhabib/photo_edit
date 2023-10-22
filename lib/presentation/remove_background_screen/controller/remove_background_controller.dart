import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/remove_background_screen/models/remove_background_model.dart';

/// A controller class for the RemoveBackgroundScreen.
///
/// This class manages the state of the RemoveBackgroundScreen, including the
/// current removeBackgroundModelObj
class RemoveBackgroundController extends GetxController {
  Rx<RemoveBackgroundModel> removeBackgroundModelObj =
      RemoveBackgroundModel().obs;
}
