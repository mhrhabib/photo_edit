import '../controller/forget_password_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ForgetPasswordThreeScreen.
///
/// This class ensures that the ForgetPasswordThreeController is created when the
/// ForgetPasswordThreeScreen is first loaded.
class ForgetPasswordThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordThreeController());
  }
}
