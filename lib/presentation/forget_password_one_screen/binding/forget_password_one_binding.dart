import '../controller/forget_password_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgetPasswordOneScreen.
///
/// This class ensures that the ForgetPasswordOneController is created when the
/// ForgetPasswordOneScreen is first loaded.
class ForgetPasswordOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordOneController());
  }
}
