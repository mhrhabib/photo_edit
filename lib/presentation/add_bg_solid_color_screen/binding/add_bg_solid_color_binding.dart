import '../controller/add_bg_solid_color_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddBgSolidColorScreen.
///
/// This class ensures that the AddBgSolidColorController is created when the
/// AddBgSolidColorScreen is first loaded.
class AddBgSolidColorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddBgSolidColorController());
  }
}
