import '../controller/adjust_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AdjustScreen.
///
/// This class ensures that the AdjustController is created when the
/// AdjustScreen is first loaded.
class AdjustBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdjustController());
  }
}
