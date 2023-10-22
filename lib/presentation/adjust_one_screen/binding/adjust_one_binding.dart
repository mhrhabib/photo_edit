import '../controller/adjust_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AdjustOneScreen.
///
/// This class ensures that the AdjustOneController is created when the
/// AdjustOneScreen is first loaded.
class AdjustOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdjustOneController());
  }
}
