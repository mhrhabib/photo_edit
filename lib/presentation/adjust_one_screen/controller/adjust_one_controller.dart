import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/adjust_one_screen/models/adjust_one_model.dart';

/// A controller class for the AdjustOneScreen.
///
/// This class manages the state of the AdjustOneScreen, including the
/// current adjustOneModelObj
class AdjustOneController extends GetxController {
  Rx<AdjustOneModel> adjustOneModelObj = AdjustOneModel().obs;
}
