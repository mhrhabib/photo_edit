import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/adjust_screen/models/adjust_model.dart';

/// A controller class for the AdjustScreen.
///
/// This class manages the state of the AdjustScreen, including the
/// current adjustModelObj
class AdjustController extends GetxController {
  Rx<AdjustModel> adjustModelObj = AdjustModel().obs;
}
